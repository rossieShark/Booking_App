
import 'package:flutter/material.dart';


class CustommTextField extends StatefulWidget {
  const CustommTextField(
      {Key? key, required this.labelText, required this.controller})
      : super(key: key);
  final String labelText;

  final TextEditingController controller;

  @override
  State<CustommTextField> createState() => _CustommTextFieldState();
}

class _CustommTextFieldState extends State<CustommTextField>
    with AutomaticKeepAliveClientMixin {
  // final _controller = TextEditingController();
  late FocusNode _focusNode;
  bool _hasFocus = false;
  bool _isValid = true;

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
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   final controllerProvider =
    //       Provider.of<TextFieldControllerProvider>(context, listen: false);
    //   controllerProvider.addController(_controller);
    // });
  }

  @override
  void dispose() {
    // controller.dispose();
    _focusNode.dispose(); // Dispose of the FocusNode to prevent memory leaks
    super.dispose();
  }

  void validate() {
    setState(() {
      _isValid = widget.controller.text.isNotEmpty;
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
                controller: widget.controller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                  labelText: widget.labelText,
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 169, 171, 183),
                      fontSize: _hasFocus ? 12 : 17,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: _hasFocus ? 14.4 / 12 : 20.4 / 17),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Color.fromARGB(255, 20, 20, 43),
                  fontSize: 16,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w400,
                  height: 17.6 / 16,
                ),

                onSaved: (value) {
                  // validateEmail(value!);
                },
                onTap: () {
                  // Reset validation when user taps into the field
                  setState(() {
                    _isValid = true;
                  });
                },
                focusNode: _focusNode, // Assign the FocusNode to the field
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
