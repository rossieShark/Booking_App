import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/widgets.dart';

class TextStyleService {
  static const fontFamily = 'SFPro';

  static TextStyle headline2(
      {Color? color, FontWeight? fontweight, double? height}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontFamily: fontFamily,
      height: height ?? 19.2 / 16,
      fontWeight: fontweight ?? FontWeight.w500,
    );
  }

  static TextStyle headline1(
      {Color? color, FontWeight? fontweight, double? height}) {
    return TextStyle(
      color: color ?? AppColors.black,
      fontSize: 22,
      fontFamily: fontFamily,
      height: height ?? 26.4 / 22,
      fontWeight: fontweight ?? FontWeight.w500,
    );
  }

  static TextStyle headline3(
      {Color? color, FontWeight? fontweight, double? height}) {
    return TextStyle(
      color: color ?? AppColors.grey,
      fontSize: 14,
      fontFamily: fontFamily,
      height: height ?? 16.8 / 14,
      fontWeight: fontweight ?? FontWeight.w500,
    );
  }

  static TextStyle headline4(
      {Color? color, FontWeight? fontweight, double? height}) {
    return TextStyle(
      color: color ?? AppColors.grey2,
      fontSize: 12,
      fontFamily: fontFamily,
      height: height ?? 14.4 / 12,
      fontWeight: fontweight ?? FontWeight.w500,
    );
  }

  static TextStyle largeText(
      {Color? color, FontWeight? fontweight, double? height}) {
    return TextStyle(
      color: color ?? AppColors.black,
      fontSize: 30,
      fontFamily: fontFamily,
      height: height ?? 36 / 30,
      fontWeight: fontweight ?? FontWeight.w600,
    );
  }
}
