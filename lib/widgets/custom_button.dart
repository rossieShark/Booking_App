import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          width: MediaQuery.of(context).size.width - 32,
          color: const Color.fromARGB(255, 13, 114, 255),
          child: TextButton(
            onPressed: onPressed,
            child: Text(buttonText,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          )),
    );
  }
}
