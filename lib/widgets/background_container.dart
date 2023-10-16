import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key? key,
    required this.child,
    required this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.width,
    this.padding,
  }) : super(key: key);
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final double? width;
  final double height;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        padding: padding,
        color: AppColors.white,
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
