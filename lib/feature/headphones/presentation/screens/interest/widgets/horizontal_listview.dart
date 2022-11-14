import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/models/category_model.dart';
import '../../../constants/color/colors.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({
    Key? key,
  }) : super(key: key);

  @override
  State<HorizontalListView> createState() =>
      _CategoryListViewBuilderWidgetState();
}

class _CategoryListViewBuilderWidgetState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 44,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:
                    categoryList[index].isSelectedOrNot ? kWhite : kOliveGreen,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    categoryList[index].svgPath,
                    color: categoryList[index].isSelectedOrNot
                        ? kOliveGreen
                        : kWhite,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    categoryList[index].categoryName,
                    style: TextStyle(
                        color: categoryList[index].isSelectedOrNot
                            ? kOliveGreen
                            : kWhite),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                categoryList[index].isSelectedOrNot =
                    !categoryList[index].isSelectedOrNot;
              });
            },
          );
        },
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 7),
      ),
    );
  }
}
