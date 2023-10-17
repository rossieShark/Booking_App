import 'package:booking/services/services_index.dart';
import 'package:booking/app_logic/index.dart';

import 'package:booking/widgets/widgets_index.dart';
import 'package:flutter/material.dart';

import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key, required this.labelText}) : super(key: key);
  final String labelText;
  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  var phoneNumberController = MaskedTextController(mask: '+7 (***) ***-**-**');
  //bool _isValid = true;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {});
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
  }

  // void onTap() {
  //   isValid = true;
  //   setState(() {

  //   });
  // }
  @override
  void dispose() {
    _focusNode.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controllerProvider =
        Provider.of<TextFieldsProvider>(context, listen: true);
    final isValid = controllerProvider.isValidMobile(phoneNumberController);
    return TextFieldContainer(
        isValid: () {
          return isValid;
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
                  FocusScope.of(context).nextFocus();
                },
                onTap: () {},
              ))
        ]));
  }
}
