import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/color/colors.dart';
import '../../../constants/textstyles.dart';

class MusicAndNoMoreContainerWidget extends StatelessWidget {
  const MusicAndNoMoreContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: kMagenta,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const FittedBox(
            child: Text(
              "Music and No more",
              style: kw500size24colWhite,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "10% off for One of the best",
              style: kw400size12colWhite,
            ),
          ),
          const FittedBox(
            // fit: BoxFit.contain,
            child: Text(
              "headphones in the world",
              style: kw400size12colWhite,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              context.go("/interest");
            },
            child: Container(
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Order Now",
                    style: kw500size16colBlack,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kBlack,
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
