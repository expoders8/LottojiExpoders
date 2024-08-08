import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';

import '../../../../config/constant/comman_button.dart';
import '../../../../config/constant/font_constant.dart';
import '../../../../config/constant/color_constant.dart';

class CreateTicketDrawsPage extends StatefulWidget {
  const CreateTicketDrawsPage({super.key});

  @override
  State<CreateTicketDrawsPage> createState() => _CreateTicketDrawsPageState();
}

class _CreateTicketDrawsPageState extends State<CreateTicketDrawsPage> {
  int selectedIndex = -1;
  Set<int> selectedIndexes = {};
  Set<int> selectedIndexes1 = {};
  String selectedText = '';
  int selectedIndex1 = -1;
  String selectedText1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            "assets/icons/arrow_left_outline.png",
            height: 20,
            width: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          "Popular Draws",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height - 170,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Number of draws",
                          style: TextStyle(
                              fontFamily: kCircularStdMedium,
                              fontSize: 17,
                              color: Color(0XFF080E31)),
                        ),
                        SizedBox(width: Get.width - 275),
                        Expanded(
                          child: CommonButton(
                            text: "+ New Draw",
                            onPressed: () {},
                            color: ksplashBackGroundColor,
                            textColor: kWhiteColor,
                            fontFamily: kCircularStdNormal,
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        selectDrawsNumberWidget(0, "1", 0),
                        const SizedBox(
                          width: 10,
                        ),
                        selectDrawsNumberWidget(1, "2", 0),
                        const SizedBox(
                          width: 10,
                        ),
                        selectDrawsNumberWidget(2, "3", 0),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Select your draw number",
                      style: TextStyle(
                          fontFamily: kCircularStdMedium,
                          fontSize: 17,
                          color: Color(0XFF080E31)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: kButtonColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Line 1/3",
                                      style: TextStyle(
                                          fontFamily: kCircularStdMedium,
                                          fontSize: 17,
                                          color: kWhiteColor),
                                    ),
                                    SizedBox(width: Get.width - 250),
                                    Expanded(
                                      child: CommonButton(
                                        text: "Quick Pick",
                                        onPressed: () {},
                                        color: kWhiteColor,
                                        textColor: kPrimaryColor,
                                        fontFamily: kCircularStdNormal,
                                        height: 35,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget(4, "1", 0),
                                selectDrawsNumberWidget(5, "2", 0),
                                selectDrawsNumberWidget(6, "3", 0),
                                selectDrawsNumberWidget(7, "4", 0),
                                selectDrawsNumberWidget(8, "5", 0),
                                selectDrawsNumberWidget(9, "6", 0),
                                selectDrawsNumberWidget(10, "7", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget(11, "8", 0),
                                selectDrawsNumberWidget(12, "9", 0),
                                selectDrawsNumberWidget(13, "10", 0),
                                selectDrawsNumberWidget(14, "11", 0),
                                selectDrawsNumberWidget(15, "12", 0),
                                selectDrawsNumberWidget(16, "13", 0),
                                selectDrawsNumberWidget(17, "14", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget(18, "15", 0),
                                selectDrawsNumberWidget(19, "16", 0),
                                selectDrawsNumberWidget(20, "17", 0),
                                selectDrawsNumberWidget(21, "18", 0),
                                selectDrawsNumberWidget(22, "19", 0),
                                selectDrawsNumberWidget(23, "20", 0),
                                selectDrawsNumberWidget(24, "21", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget(25, "22", 0),
                                selectDrawsNumberWidget(26, "23", 0),
                                selectDrawsNumberWidget(27, "24", 0),
                                selectDrawsNumberWidget(28, "25", 0),
                                selectDrawsNumberWidget(29, "26", 0),
                                selectDrawsNumberWidget(30, "27", 0),
                                selectDrawsNumberWidget(31, "28", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget(32, "29", 0),
                                selectDrawsNumberWidget(33, "30", 0),
                                selectDrawsNumberWidget(34, "31", 0),
                                selectDrawsNumberWidget(35, "32", 0),
                                selectDrawsNumberWidget(36, "33", 0),
                                selectDrawsNumberWidget(37, "34", 0),
                                selectDrawsNumberWidget(38, "35", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget(39, "36", 0),
                                selectDrawsNumberWidget(40, "37", 0),
                                selectDrawsNumberWidget(41, "38", 0),
                                selectDrawsNumberWidget(42, "39", 0),
                                selectDrawsNumberWidget(43, "40", 0),
                                selectDrawsNumberWidget(44, "41", 0),
                                selectDrawsNumberWidget(45, "42", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                selectDrawsNumberWidget(46, "43", 0),
                                const SizedBox(
                                  width: 11,
                                ),
                                selectDrawsNumberWidget(47, "44", 0),
                                const SizedBox(
                                  width: 11,
                                ),
                                selectDrawsNumberWidget(48, "45", 0),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget1(1, "1", 0),
                                selectDrawsNumberWidget1(2, "2", 0),
                                selectDrawsNumberWidget1(3, "3", 0),
                                selectDrawsNumberWidget1(4, "4", 0),
                                selectDrawsNumberWidget1(5, "5", 0),
                                selectDrawsNumberWidget1(6, "6", 0),
                                selectDrawsNumberWidget1(7, "7", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget1(8, "8", 0),
                                selectDrawsNumberWidget1(9, "9", 0),
                                selectDrawsNumberWidget1(10, "10", 0),
                                selectDrawsNumberWidget1(11, "11", 0),
                                selectDrawsNumberWidget1(12, "12", 0),
                                selectDrawsNumberWidget1(13, "13", 0),
                                selectDrawsNumberWidget1(14, "14", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget1(15, "15", 0),
                                selectDrawsNumberWidget1(16, "16", 0),
                                selectDrawsNumberWidget1(17, "17", 0),
                                selectDrawsNumberWidget1(18, "18", 0),
                                selectDrawsNumberWidget1(19, "19", 0),
                                selectDrawsNumberWidget1(20, "20", 0),
                                selectDrawsNumberWidget1(21, "21", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget1(22, "22", 0),
                                selectDrawsNumberWidget1(23, "23", 0),
                                selectDrawsNumberWidget1(24, "24", 0),
                                selectDrawsNumberWidget1(25, "25", 0),
                                selectDrawsNumberWidget1(26, "26", 0),
                                selectDrawsNumberWidget1(27, "27", 0),
                                selectDrawsNumberWidget1(28, "28", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget1(29, "29", 0),
                                selectDrawsNumberWidget1(30, "30", 0),
                                selectDrawsNumberWidget1(31, "31", 0),
                                selectDrawsNumberWidget1(32, "32", 0),
                                selectDrawsNumberWidget1(33, "33", 0),
                                selectDrawsNumberWidget1(34, "34", 0),
                                selectDrawsNumberWidget1(35, "35", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                selectDrawsNumberWidget1(36, "36", 0),
                                selectDrawsNumberWidget1(37, "37", 0),
                                selectDrawsNumberWidget1(38, "38", 0),
                                selectDrawsNumberWidget1(39, "39", 0),
                                selectDrawsNumberWidget1(40, "40", 0),
                                selectDrawsNumberWidget1(41, "41", 0),
                                selectDrawsNumberWidget1(42, "42", 0),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                selectDrawsNumberWidget1(43, "43", 0),
                                const SizedBox(
                                  width: 11,
                                ),
                                selectDrawsNumberWidget1(44, "44", 0),
                                const SizedBox(
                                  width: 11,
                                ),
                                selectDrawsNumberWidget1(45, "45", 0),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 86,
            width: Get.width,
            decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Number of draws",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kCircularStdMedium,
                            fontSize: 18),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kCircularStdMedium,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width - 260,
                  ),
                  Expanded(
                    child: CommonButton(
                      text: "Proceed",
                      onPressed: () {
                        Get.toNamed(Routes.selectedDrawsPage);
                      },
                      color: ksplashBackGroundColor,
                      textColor: kWhiteColor,
                      fontFamily: kCircularStdNormal,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  selectDrawsNumberWidget(int index, text, int color) {
    // bool isSelected = selectedIndex == index;
    bool isSelected = selectedIndexes.contains(index);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedIndexes.remove(index);
          } else {
            selectedIndexes.add(index);
          }
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: isSelected ? const Color(0XFFF9E5A8) : kcontainercolor,
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Center(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }

  selectDrawsNumberWidget1(int index, text, int color) {
    // bool isSelected = selectedIndex1 == index;
    bool isSelected = selectedIndexes1.contains(index);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedIndexes1.remove(index);
          } else {
            selectedIndexes1.add(index);
          }
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: isSelected ? const Color(0XFFF9E5A8) : kcontainercolor,
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Center(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
