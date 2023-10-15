import 'package:booking/app_logic/controller_provider.dart';
import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/screens/booking_page/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

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
  Widget build(BuildContext context) {
    final controllerProvider =
        Provider.of<TextFieldControllerProvider2>(context, listen: true);
    final isValid = controllerProvider.isValid(_controller);

    return TextFieldContainer(
      isValid: () {
        return isValid;
      },
      child: CustomTextField(
        controller: _controller,
        keyboardType: TextInputType.number,

        labelText: widget.labelText,
        regex: RegExp(r'[\d]+'),
        onSaved: () {},
        onTap: () {},
        focusNode: _focusNode,
        hasFocus: _hasFocus, // Assign the FocusNode to the field
      ),
    );
  }
}
