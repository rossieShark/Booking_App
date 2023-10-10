import 'package:booking/app_logic/controller_provider.dart';
import 'package:booking/screens/booking_page/text_fields/custom_text_field.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:provider/provider.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key, required this.labelText}) : super(key: key);
  final String labelText;
  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  var phoneNumberController = MaskedTextController(mask: '+7 (***) ***-**-**');
  bool _isValid = true;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        validateMobile(phoneNumberController.text);
      }
    });
    phoneNumberController.addListener(() {
      final text = phoneNumberController.text;
      if (text.startsWith('9')) {
        // Replace the first asterisk with '9'
        phoneNumberController.updateText(text.replaceFirst('*', '9'));
      } else if (!text.startsWith('+7')) {
        // Add '+7 ' prefix if it doesn't start with '+7'
        phoneNumberController.updateText('+7 $text');
      }
      print(phoneNumberController.text.length);
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final controllerProvider =
          Provider.of<TextFieldControllerProvider>(context, listen: false);
      controllerProvider.addController(phoneNumberController);
    });
  }

  void validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        _isValid = false;
      });
      return; // Empty input is invalid
    }

    String pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      setState(() {
        _isValid = false;
      });
    } else {
      setState(() {
        _isValid = true;
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        isValid: () {
          return _isValid;
        },
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.labelText,
              style: TextStyleService.headline4(),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 24.0),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '+7 (***) ***-**-**',
                  hintStyle: TextStyleService.headline2(
                      color: AppColors.grey2,
                      fontweight: FontWeight.w400,
                      height: 17.6 / 16),
                  border: InputBorder.none,
                ),
                style: TextStyleService.headline2(
                    color: AppColors.darkBlue,
                    fontweight: FontWeight.w400,
                    height: 17.6 / 16),
                focusNode: _focusNode,
                onFieldSubmitted: (_) {
                  // Set focus to another field when submitted
                  FocusScope.of(context).nextFocus();
                },
                onSaved: (value) {
                  validateMobile(value);
                },
                onTap: () {
                  // Reset validation when user taps into the field
                  setState(() {
                    _isValid = true;
                  });
                },
                // validator: validateMobile, // Assign the validation function
              ))
        ]));
  }
}
