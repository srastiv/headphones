import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/category_model.dart';
import '../../constants/color/colors.dart';
import '../../constants/textstyles.dart';
import '../../widgets/custom_iconbutton.dart';
import 'widgets/category_listview.dart';
import 'widgets/music_and_nomore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButtonWidget(
                        radius: 10,
                        iconSize: 20.5,
                        icon: SvgPicture.asset(
                          "assets/icons/search.svg",

                          // height: 24,
                          // width: 24,
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            child: CustomIconButtonWidget(
                              radius: 10,
                              iconSize: 17,
                              icon: SvgPicture.asset(
                                "assets/icons/Notification.svg",
                                height: 20.5,
                                width: 20.5,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -5,
                            right: -5,
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: kMagenta,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: FittedBox(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: kWhite,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const MusicAndNoMoreContainerWidget(),
                      Positioned(
                        left: 140,
                        top: -55,
                        child: SizedBox(
                          height: 198,
                          width: 227,
                          child: Image.asset("assets/images/headphones.png"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const FittedBox(
                    child: Text(
                      "Popular Category",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const CategoryListViewBuilderWidget(),
                ],
              ),
            ),
            ...List.generate(
              categoryList.length,
              (index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.5, horizontal: 16),
                    height: 149.5,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: kWhite,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 8,
                          spreadRadius: 0,
                          color: Color.fromARGB(30, 0, 0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 108,
                          width: 108,
                          decoration: BoxDecoration(
                            color: kLightPink,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(categoryList[index].imagePath),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      categoryList[index].productName,
                                      //  textScaleFactor: 1,
                                      style: kw500size16,
                                    ),
                                  ),
                                  const SizedBox(width: 20
                                      // MediaQuery.of(context).size.width * 0.11,
                                      ),
                                  CustomIconButtonWidget(
                                    radius: 5,
                                    iconSize: 13,
                                    length: 24,
                                    shadow: const [
                                      BoxShadow(
                                        offset: Offset(0, 1),
                                        blurRadius: 8,
                                        spreadRadius: 0,
                                        color: Color.fromARGB(12, 0, 0, 0),
                                      ),
                                    ],
                                    icon: SvgPicture.asset(
                                        "assets/icons/Heart.svg"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 171,
                              child: Text(
                                categoryList[index].productDescription,
                                //  textScaleFactor: 1,
                                maxLines: 3,
                                style: kw400size16colTextGrey,
                              ),
                            ),
                            // const SizedBox(height: 14.5),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                      "\$ ${categoryList[index].price.toString()}",
                                      textScaleFactor: 1,
                                      style: kw500size16colMagenta),
                                  const SizedBox(width: 47),
                                  SizedBox(
                                    height: 24,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: kMagenta,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {
                                        var product = categoryList[index];
                                        context.go("/products/$product",
                                            extra: product);
                                      },
                                      child: const Text("Buy",
                                          textScaleFactor: 1,
                                          style: kw500size14colWhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
