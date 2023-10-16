import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/screens/booking_page/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    isValid =
        context.watch<TextFieldControllerProvider2>().isValid(_controller);

    super.didChangeDependencies();
  }

  void onTap() {
    setState(() {
      isValid = true;
    });
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
            onSaved: () {},
            onTap: () {
              onTap();
            },
            focusNode: _focusNode));
  }
}
