import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/color/colors.dart';
import '../../widgets/custom_iconbutton.dart';
import 'widgets/category_listview.dart';
import 'widgets/headphones_listview_builder.dart';
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
        child: Padding(
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
                    length: 42,
                    icon: SvgPicture.asset(
                      "assets/icons/search.svg",
                      height: 24,
                      width: 24,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: CustomIconButtonWidget(
                          radius: 10,
                          length: 42,
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
              const Text(
                "Popular Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              const CategoryListViewBuilderWidget(),
              const ListOfHeadPhonesListViewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
