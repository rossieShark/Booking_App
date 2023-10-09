import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField>
    with AutomaticKeepAliveClientMixin {
  final _emailController = TextEditingController();
  late FocusNode _emailFocusNode;
  bool _hasFocus = false;
  bool _isValid = true; // Start with true to prevent initial error message

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();

    // Listen for focus changes and validate email when focus is lost
    _emailFocusNode.addListener(() {
      setState(() {
        _hasFocus = _emailFocusNode.hasFocus;
      });
      if (!_emailFocusNode.hasFocus) {
        validateEmail(_emailController.text);
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode
        .dispose(); // Dispose of the FocusNode to prevent memory leaks
    super.dispose();
  }

  // Function to validate email
  void validateEmail(String email) {
    setState(() {
      _isValid = EmailValidator.validate(email);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
            height: 52,
            width:
                MediaQuery.of(context).size.width, // Adjust the width as needed

            color: !_isValid
                ? const Color(0xFFEB5757).withOpacity(0.15)
                : const Color(0xFFF6F6F9),
            // Set background color based on errorText

            child: Focus(
              onFocusChange: (hasFocus) {
                setState(() {
                  _hasFocus = hasFocus;
                });
              },
              child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                  labelText: 'Почта',
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 169, 171, 183),
                      fontSize: _hasFocus ? 12 : 17,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: _hasFocus
                          ? 14.4 / 12
                          : 20.4 /
                              17), // Use labelText for text that moves up when tapped
                  floatingLabelBehavior: FloatingLabelBehavior
                      .auto, // Label always floats above the field
                  border: InputBorder.none,
                  // You can customize other properties of InputDecoration as needed
                ),
                style: const TextStyle(
                  color: Color.fromARGB(255, 20, 20, 43),
                  fontSize: 16,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w400,
                  height: 17.6 / 16,
                ),

                onSaved: (value) {
                  validateEmail(value!);
                },
                onTap: () {
                  // Reset validation when user taps into the field
                  setState(() {
                    _isValid = true;
                  });
                },
                focusNode: _emailFocusNode, // Assign the FocusNode to the field
                onFieldSubmitted: (_) {
                  // Set focus to another field when submitted
                  FocusScope.of(context).nextFocus();
                },
              ),
            )));
  }

  @override

  bool get wantKeepAlive => true;
}
