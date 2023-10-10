import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
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
          color: AppColors.blue,
          child: TextButton(
            onPressed: onPressed,
            child: Text(buttonText,
                style: TextStyleService.headline2(
                    color: AppColors.white,
                    fontweight: FontWeight.w400,
                    height: 17.6 / 16)),
          )),
    );
  }
}
