import 'package:booking/services/services_index.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key? key,
    required this.child,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.color = AppColors.white,
    this.width,
    this.padding,
  }) : super(key: key);
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final Color color;
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        padding: padding,
        color: color,
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
