import 'package:booking/services/services_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldContainer extends StatelessWidget {
  final bool Function() isValid;
  final Widget child;

  const TextFieldContainer({
    super.key,
    required this.child,
    required this.isValid,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width, // Adjust the width as needed
        color: !isValid() ? AppColors.red.withOpacity(0.15) : AppColors.white,
        child: child,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool hasFocus;
  final RegExp? regex;
  final VoidCallback? onSaved;
  final VoidCallback onTap;
  final FocusNode focusNode;
  final TextInputType? keyboardType;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hasFocus,
      this.regex,
      required this.onTap,
      required this.focusNode,
      this.onSaved,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        labelText: labelText,
        labelStyle: TextStyle(
            color: const Color.fromARGB(255, 169, 171, 183),
            fontSize: hasFocus ? 12 : 17,
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w400,
            height: hasFocus ? 14.4 / 12 : 20.4 / 17),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: InputBorder.none,
      ),
      inputFormatters:
          regex != null ? [FilteringTextInputFormatter.allow(regex!)] : null,
      style: TextStyleService.headline2(
        color: AppColors.graphyte,
        fontweight: FontWeight.w400,
        height: 17.6 / 16,
      ),
      onSaved: (value) {
        onSaved;
      },
      onTap: () {
        onTap();
      },
      focusNode: focusNode,
      onFieldSubmitted: (_) {
        FocusScope.of(context).nextFocus();
      },
    );
  }
}
