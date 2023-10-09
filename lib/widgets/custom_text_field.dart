import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.textField,
    required this.hintText,
    required this.errorText, // Add errorText property
    super.key,
  });

  final Widget textField;
  final String hintText;
  final String? errorText; // Add errorText

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width, // Adjust the width as needed

        color: errorText != null
            ? const Color(0xFFEB5757).withOpacity(0.15)
            : const Color(0xFFF6F6F9),
        // Set background color based on errorText

        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(hintText,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 169, 171, 183),
                      fontSize: 12,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: 14.4 / 12)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 24.0),
              child: textField,
            ),
          ],
        ),
      ),
    );
  }
}
