import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/screens/booking_page/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DateTextField extends StatefulWidget {
  const DateTextField({Key? key, required this.labelText}) : super(key: key);
  final String labelText;

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  final _controller = TextEditingController();
  late FocusNode _focusNode;
  bool _hasFocus = false;
  bool isValid = true;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:
          widget.labelText == 'Дата рождения' ? DateTime(1923) : DateTime(2012),
      lastDate:
          widget.labelText == 'Дата рождения' ? DateTime.now() : DateTime(2035),
    );

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      setState(() {
        _controller.text = formattedDate;
      });
    }
  }

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

  void onTap() {
    _selectDate(context);
  }

  @override
  void didChangeDependencies() {
    isValid =
        context.watch<TextFieldControllerProvider2>().isValid(_controller);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      isValid: () {
        return isValid;
      },
      child: CustomTextField(
        controller: _controller,
        keyboardType: TextInputType.datetime,
        labelText: widget.labelText,
        onSaved: () {},
        onTap: onTap,
        focusNode: _focusNode,
        hasFocus: _hasFocus,
        regex: null,
      ),
    );
  }
}
