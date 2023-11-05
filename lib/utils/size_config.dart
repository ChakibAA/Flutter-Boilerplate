// Flutter imports:
import 'package:flutter/material.dart';

class SizeConfig extends StatelessWidget {
  const SizeConfig({super.key, required this.child, this.height, this.width});

  final Widget child;

  final double? height;

  final double? width;

  double? getProportionateScreenHeight(
      double? inputHeight, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    if (inputHeight == null) {
      return null;
    } else {
      return (inputHeight / 812.0) * screenHeight;
    }
  }

  double? getProportionateScreenWidth(
      double? inputWidth, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (inputWidth == null) {
      return null;
    } else {
      return (inputWidth / 812.0) * screenWidth;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(height, context),
      width: getProportionateScreenWidth(width, context),
      child: child,
    );
  }
}
