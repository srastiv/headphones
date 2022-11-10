import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:headphones/feature/headphones/presentation/constants/color/colors.dart';

class CustomIconButtonWidget extends StatelessWidget {
  CustomIconButtonWidget(
      {Key? key,
      required this.icon,
      required this.length,
      required this.radius,
      this.shadow,
      this.onpressed})
      : super(key: key);
  final Widget icon;
  final double length;
  final double radius;
  void Function()? onpressed;

  List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: length,
      width: length,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: kLightGrey),
      ),
      child: IconButton(
        color: kWhite,
        padding: EdgeInsets.zero,
        onPressed: onpressed,
        icon: icon,
      ),
    );
  }
}
