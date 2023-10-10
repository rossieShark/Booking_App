import 'package:booking/app_logic/controller_provider.dart';
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

class _PassportNumberTextFieldState extends State<PassportNumberTextField>
    with AutomaticKeepAliveClientMixin {
  final _controller = TextEditingController();
  late FocusNode _focusNode;
  bool _hasFocus = false;
  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
      // if (!_focusNode.hasFocus) {
      //   validateEmail(_controller.text);
      // }
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final controllerProvider =
          Provider.of<TextFieldControllerProvider>(context, listen: false);
      controllerProvider.addController(_controller);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose(); // Dispose of the FocusNode to prevent memory leaks
    super.dispose();
  }

  void validate() {
    setState(() {
      _isValid = _controller.text.isNotEmpty;
    });
  }

  bool isValid() {
    final controllerProvider =
        Provider.of<TextFieldControllerProvider>(context, listen: true);
    if (controllerProvider.isButtonTapped) {
      print(controllerProvider.isButtonTapped);
      if (_isValid) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  }

  void onTap() {
    setState(() {
      _isValid = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return TextFieldContainer(
      isValid: isValid,
      child: CustomTextField(
        controller: _controller,
        keyboardType: TextInputType.number,

        labelText: widget.labelText,
        regex: RegExp(r'[\d]+'),

        onSaved: validate,
        onTap: onTap,
        focusNode: _focusNode,
        hasFocus: _hasFocus, // Assign the FocusNode to the field
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
