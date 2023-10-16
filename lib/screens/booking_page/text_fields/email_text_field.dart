import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/screens/booking_page/text_fields/custom_text_field.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class EmailTextField extends StatefulWidget {
  final String labelText;
  const EmailTextField({Key? key, required this.labelText}) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField>
    with AutomaticKeepAliveClientMixin {
  final _emailController = TextEditingController();
  late FocusNode _emailFocusNode;
  bool _hasFocus = false;
  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();

    // Listen for focus changes and validate email when focus is lost
    _emailFocusNode.addListener(() {
      setState(() {
        _hasFocus = _emailFocusNode.hasFocus;
      });
      // if (!_emailFocusNode.hasFocus) {
      //   validateEmail(_emailController.text);
      // }
    });
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   final controllerProvider =
    //       Provider.of<TextFieldControllerProvider>(context, listen: false);
    //   controllerProvider.addController(_emailController);
    // });
  }

  @override
  void dispose() {
    _emailFocusNode
        .dispose(); // Dispose of the FocusNode to prevent memory leaks
    super.dispose();
  }

  // Function to validate email
  // void validateEmail(String email) {
  //   setState(() {
  //     _isValid = EmailValidator.validate(email);
  //   });
  // }

  // bool isValid() {
  //   final controllerProvider =
  //       Provider.of<TextFieldControllerProvider>(context, listen: true);
  //   if (controllerProvider.isButtonTapped) {
  //     print(controllerProvider.isButtonTapped);
  //     if (_isValid) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } else {
  //     return true;
  //   }
  // }

  // void onTap() {
  //   setState(() {
  //     _isValid = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final controllerProvider =
        Provider.of<TextFieldControllerProvider2>(context, listen: true);
    final isValid = controllerProvider.isValidEmail(_emailController);
    super.build(context);
    return TextFieldContainer(
      isValid: () {
        return isValid;
      },
      child: CustomTextField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,

        labelText: widget.labelText,
        onSaved: () {
          // validateEmail(_emailController.text);
        },
        onTap: () {},
        focusNode: _emailFocusNode,
        hasFocus: _hasFocus, // Assign the FocusNode to the field
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
