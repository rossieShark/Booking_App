import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key}) : super(key: key);

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  var phoneNumberController = MaskedTextController(mask: '+7 (***) ***-**-**');

  @override
  void initState() {
    super.initState();

    phoneNumberController.addListener(() {
      final text = phoneNumberController.text;
      if (text.startsWith('9')) {
        // Replace the first asterisk with '9'
        phoneNumberController.updateText(text.replaceFirst('*', '9'));
      } else if (!text.startsWith('+7')) {
        // Add '+7 ' prefix if it doesn't start with '+7'
        phoneNumberController.updateText('+7 $text');
      }
    });
  }

  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter mobile number';
    }
    String pattern = r'(^(9)?[0-9]{10}$)';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null; // Return null if the input is valid
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneNumberController,
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        hintText: '+7 (***) ***-**-**',
        hintStyle: TextStyle(
            color: Color.fromARGB(255, 169, 171, 183),
            fontSize: 16,
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w400,
            height: 17.6 / 16),
        border: InputBorder.none,
      ),
      style: const TextStyle(
          color: Color.fromARGB(255, 20, 20, 43),
          fontSize: 16,
          fontFamily: 'SFPro',
          fontWeight: FontWeight.w400,
          height: 17.6 / 16),
      validator: validateMobile, // Assign the validation function
    );
  }
}
