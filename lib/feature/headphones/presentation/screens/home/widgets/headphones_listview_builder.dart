import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/models/category_model.dart';
import '../../../constants/color/colors.dart';
import '../../../constants/textstyles.dart';
import '../../../widgets/custom_iconbutton.dart';

class ListOfHeadPhonesListViewWidget extends StatelessWidget {
  const ListOfHeadPhonesListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 16),
        itemCount: categoryList.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.5, horizontal: 16),
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
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                shadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                    color: Color.fromARGB(12, 0, 0, 0),
                                  ),
                                ],
                                icon:
                                    SvgPicture.asset("assets/icons/Heart.svg"),
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
                              Text("\$ ${categoryList[index].price.toString()}",
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
                                      borderRadius: BorderRadius.circular(8),
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
          );
        }),
      ),
    );
  }
}
