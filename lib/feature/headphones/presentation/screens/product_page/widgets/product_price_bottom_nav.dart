import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/models/category_model.dart';
import '../../../constants/color/colors.dart';
import '../../../constants/textstyles.dart';

class ProductPriceBottomNavWidget extends StatelessWidget {
  const ProductPriceBottomNavWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final CategoryModel product;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                text: "\$${product.price.toStringAsFixed(0)}.",
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 24, color: kBlack),
                children: <TextSpan>[
                  TextSpan(
                    text: double.tryParse(
                      product.price.toString().split('.')[0].substring(0, 2),
                    )!
                        .toStringAsFixed(0),
                    //  text: product.price.toStringAsFixed(0),
                    style: kw400size18colGrey,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 35),
            SizedBox(
              height: 48,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: kMagenta,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Add to Card  ",
                      textScaleFactor: 1,
                      style: kw500size18,
                    ),
                    SvgPicture.asset("assets/icons/arrow.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
