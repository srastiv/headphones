import 'package:flutter/material.dart';
import '../constants/color/colors.dart';

class CustomIconButtonWidget extends StatelessWidget {
  const CustomIconButtonWidget(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.radius,
      this.length,
      this.shadow,
      this.onpressed})
      : super(key: key);
  final Widget icon;
  final double iconSize;
  final double radius;
  final double? length;

  final void Function()? onpressed;

  final List<BoxShadow>? shadow;

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
        iconSize: iconSize,
        color: kWhite,
        padding: const EdgeInsets.all(0),
        onPressed: onpressed,
        icon: icon,
      ),
    );
  }
}
