import 'package:booking/widgets/widgets_index.dart';
import 'package:booking/app_logic/index.dart';

import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  final String labelText;
  const EmailTextField({Key? key, required this.labelText}) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final _emailController = TextEditingController();
  late FocusNode _emailFocusNode;
  bool _hasFocus = false;
  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();

    _emailFocusNode.addListener(() {
      setState(() {
        _hasFocus = _emailFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controllerProvider =
        Provider.of<TextFieldsProvider>(context, listen: true);
    final isValid = controllerProvider.isValidEmail(_emailController);
    return TextFieldContainer(
      isValid: () {
        return isValid;
      },
      child: CustomTextField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        labelText: widget.labelText,
        onTap: () {},
        focusNode: _emailFocusNode,
        hasFocus: _hasFocus,
      ),
    );
  }
}
