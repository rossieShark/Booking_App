import 'package:booking/app_logic/index.dart';
import 'package:booking/widgets/widgets_index.dart';

import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  const NameTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);
  final String labelText;

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final _controller = TextEditingController();
  late FocusNode _focusNode;
  bool _hasFocus = false;
  bool isValid = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    isValid = context.watch<TextFieldsProvider>().isValid(_controller);

    super.didChangeDependencies();
  }

  void onTap() {
    isValid = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        isValid: () {
          return isValid;
        },
        child: CustomTextField(
            keyboardType: TextInputType.name,
            controller: _controller,
            labelText: widget.labelText,
            hasFocus: _hasFocus,
            regex: RegExp(r'[a-zA-Z]+'),
            onTap: onTap,
            focusNode: _focusNode));
  }
}
