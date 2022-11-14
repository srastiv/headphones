import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/color/colors.dart';
import '../../../widgets/custom_iconbutton.dart';
import 'product_images_listview.dart';

class ProductPhotosCustomWidget extends StatelessWidget {
  const ProductPhotosCustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 28),
        Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            CustomIconButtonWidget(
              iconSize: 20.5,
              radius: 10,
              onpressed: () {
                context.go("/");
              },
              icon: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset(
                    "assets/icons/left_arrow.svg",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 53),
            const ProductImagesListViewWidget(),
          ],
        ),
        const SizedBox(width: 23),
        Container(
          height: 420,
          width: MediaQuery.of(context).size.width * 0.73,
          decoration: const BoxDecoration(
            color: kLightPink,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0, right: 24),
                child: CustomIconButtonWidget(
                  iconSize: 20,
                  radius: 10,
                  icon: SvgPicture.asset(
                    "assets/icons/Heart.svg",
                    height: 20,
                    width: 20,
                  ),
              
                ),
              ),
              Image.asset("assets/images/headphones.png"),
            ],
          ),
        ),
      ],
    );
  }
}
