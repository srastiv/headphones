import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/category_model.dart';
import '../../constants/color/colors.dart';
import '../../constants/textstyles.dart';
import 'widgets/product_photos_widget.dart';
import 'widgets/product_price_bottom_nav.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  final CategoryModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: ProductPriceBottomNavWidget(product: product),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductPhotosCustomWidget(),
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
                      FittedBox(
                        child: Text(
                          product.productName,
                          style: kw700size24,
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
                            const FittedBox(child: Text("4.9")),
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
                    style: kw400size14,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/info.svg"),
                      const SizedBox(width: 12),
                      const Flexible(
                        child: Text(
                          "Product Specification",
                          style: kw400size16,
                        ),
                      ),
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
                    thickness: 1.5,
                    color: kLightGrey,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/colors.svg"),
                          const SizedBox(width: 12),
                          const FittedBox(
                            child: Text(
                              "Colors",
                              style: kw400size16,
                            ),
                          ),
                        ],
                      ),
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
