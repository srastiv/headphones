import 'package:flutter/material.dart';
import 'package:headphones/feature/headphones/presentation/constants/color/colors.dart';

class MusicAndNoMoreContainerWidget extends StatelessWidget {
  const MusicAndNoMoreContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147,
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: kMagenta,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Music and No more",
            style: TextStyle(
              color: kWhite,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "10% off for One of the best",
            style: TextStyle(
              color: kWhite,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            "headphones in the world",
            style: TextStyle(
              color: kWhite,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 35,
            width: 113,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Row(
                  children: const [
                    Text(
                      "Order Now",
                      style: TextStyle(color: kBlack),
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
          ),
        ],
      ),
    );
  }
}
