import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui';

import '../../constants/color/colors.dart';
import '../../constants/textstyles.dart';
import 'widgets/horizontal_listview.dart';

class Interest extends StatelessWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/greenBG.png"),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              padding: const EdgeInsets.all(21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "NFT™",
                        style: TextStyle(
                            fontSize: 50,
                            color: kWhite,
                            fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.menu,
                        color: kWhite,
                      ),
                    ],
                  ),
                  const SizedBox(height: 7.73),
                  const HorizontalListView(),
                  const SizedBox(height: 17),
                  const Text(
                    "TRENDING",
                    style: TextStyle(
                      color: kWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 6.33),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Stack(
                      //clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          "assets/images/pickle.png",
                          // scale: 0.9,
                          fit: BoxFit.contain,
                        ),
                        Positioned(
                          bottom: 0,
                          child: ClipRRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 20.0,
                                sigmaY: 20.0,
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  left: 11,
                                  bottom: 12,
                                  right: 11,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  color: Colors.transparent.withOpacity(0.2),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "PICKLE RICK",
                                          style: kw900size16colWhite,
                                        ),
                                        Text(
                                          "Konstantine Stupa",
                                          style: kw300size6colWhite,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "0.90 ETH",
                                          style: kw900size16colWhite,
                                        ),
                                        Text(
                                          "oferta actual",
                                          style: kw300size6colWhite,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
