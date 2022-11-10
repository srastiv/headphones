import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/models/category_model.dart';
import '../../../constants/color/colors.dart';
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
                //  margin: const EdgeInsets.only(bottom: 12),
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
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                categoryList[index].productName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.11),
                              CustomIconButtonWidget(
                                radius: 5,
                                length: 24,
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
                            maxLines: 3,
                            style: const TextStyle(
                                color: kTextGrey,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 14.5),
                        Row(
                          children: [
                            Text(
                              "\$ ${categoryList[index].price.toString()}",
                              style: const TextStyle(
                                color: kMagenta,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
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
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(color: kWhite),
                                ),
                              ),
                            ),
                          ],
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
