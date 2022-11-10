import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/category_model.dart';
import '../../constants/color/colors.dart';
import '../../widgets/custom_iconbutton.dart';
import 'widgets/bottom_nav.dart';
import 'widgets/product_images_listview.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  final CategoryModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      // extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: ProductPriceBottomNavWidget(product: product),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 28),
                Column(
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    CustomIconButtonWidget(
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
                      length: 42,
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
                          radius: 10,
                          icon: SvgPicture.asset(
                            "assets/icons/Heart.svg",
                            height: 20,
                            width: 20,
                          ),
                          length: 42,
                        ),
                      ),
                      Image.asset("assets/images/headphones.png"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.productName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        width: 59,
                        height: 28,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightGrey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/icons/star.svg"),
                            const Text("4.9"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    product.productDescription,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/info.svg"),
                      const SizedBox(width: 12),
                      const Text(
                        "Product Specifications",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .170),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/arrow.svg",
                          color: kBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    thickness: 2,
                    color: kLightGrey,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/colors.svg"),
                      const SizedBox(width: 12),
                      const Text(
                        "Colors",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .35),
                      SvgPicture.asset("assets/icons/colorOptions.svg"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
