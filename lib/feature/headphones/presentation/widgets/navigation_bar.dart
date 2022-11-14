import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/color/colors.dart';
import '../screens/home/homescreen.dart';
import '../screens/interest/interest.dart';
import '../screens/others/otherscreens.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  const CustomBottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBarWidget> createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  int currentindex = 0;
  final tabs = [
    const HomeScreen(),
    const Category(),
    const Interest(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        currentindex = index;
      },
    );
    // context.go("/scanscreen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kMagenta,
        child: SvgPicture.asset("assets/icons/Scan.svg"),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 86,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              color: Color.fromARGB(74, 194, 192, 192),
              spreadRadius: 10,
              blurRadius: 100,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // bottomNavIcon(0, "assets/icons/Home.svg", "Home"),
                // bottomNavIcon(1, "assets/icons/Category.svg", "Categories"),
                // bottomNavIcon(2, "assets/icons/Heart.svg", "Interests"),
                // bottomNavIcon(3, "assets/icons/Profile.svg", "Profile"),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _onItemTapped(0);
                      });
                    },
                    icon: Column(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            "assets/icons/Home.svg",
                            color: currentindex == 0 ? kMagenta : kIconGrey,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color: currentindex == 0 ? kMagenta : kIconGrey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _onItemTapped(1);
                      });
                    },
                    icon: Column(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            "assets/icons/Category.svg",
                            color: currentindex == 1 ? kMagenta : kIconGrey,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Categories",
                            style: TextStyle(
                              color: currentindex == 1 ? kMagenta : kIconGrey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _onItemTapped(2);
                      });
                    },
                    icon: Column(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            "assets/icons/Heart.svg",
                            color: currentindex == 2 ? kMagenta : kIconGrey,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Interests",
                            style: TextStyle(
                              color: currentindex == 2 ? kMagenta : kIconGrey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _onItemTapped(3);
                      });
                    },
                    icon: Column(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            "assets/icons/Profile.svg",
                            color: currentindex == 3 ? kMagenta : kIconGrey,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Profile",
                            style: TextStyle(
                              color: currentindex == 3 ? kMagenta : kIconGrey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: tabs[currentindex],
    );
  }
}
