import 'package:booking/widgets/widgets_index.dart';
import 'package:booking/app_logic/index.dart';
import 'package:flutter/material.dart';

class PassportNumberTextField extends StatefulWidget {
  const PassportNumberTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);
  final String labelText;

  @override
  State<PassportNumberTextField> createState() =>
      _PassportNumberTextFieldState();
}

class _PassportNumberTextFieldState extends State<PassportNumberTextField> {
  final _controller = TextEditingController();
  late FocusNode _focusNode;
  bool isValid = false;
  bool _hasFocus = false;

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
        controller: _controller,
        keyboardType: TextInputType.number,
        labelText: widget.labelText,
        regex: RegExp(r'[\d]+'),
        onTap: onTap,
        focusNode: _focusNode,
        hasFocus: _hasFocus,
      ),
    );
  }
}
