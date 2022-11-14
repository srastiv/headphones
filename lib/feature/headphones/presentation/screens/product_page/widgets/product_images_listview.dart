import 'package:flutter/material.dart';

import '../../../../data/models/category_model.dart';
import '../../../constants/color/colors.dart';

class ProductImagesListViewWidget extends StatelessWidget {
  const ProductImagesListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 50,
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: kLightGrey),
              ),
              child: Image.asset(
                categoryList[index].imagePath,
                fit: BoxFit.contain,
              ),
            );
          }),
    );
  }
}
