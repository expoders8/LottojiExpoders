import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';

import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class DrawsHistoryPage extends StatefulWidget {
  const DrawsHistoryPage({super.key});

  @override
  State<DrawsHistoryPage> createState() => _DrawsHistoryPageState();
}

class _DrawsHistoryPageState extends State<DrawsHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Draw History",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Column(
            children: [
              historycards(),
              const SizedBox(
                height: 15,
              ),
              historycards(),
              const SizedBox(
                height: 15,
              ),
              historycards(),
              const SizedBox(
                height: 15,
              ),
              historycards(),
              const SizedBox(
                height: 15,
              ),
              historycards(),
            ],
          ),
        ),
      ),
    );
  }

  drowResultsWidget(text, int color) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: color == 1 ? const Color(0XFFF9E5A8) : kcontainercolor,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Padding(
          padding: const EdgeInsets.all(3.0), child: Center(child: Text(text))),
    );
  }

  historycards() {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.alarm_sharp,
                  color: kSecondaryColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Thu, 4:59 AM",
                  style: TextStyle(
                      fontFamily: kCircularStdMedium,
                      fontSize: 15,
                      color: kSecondaryColor),
                ),
                SizedBox(
                  width: Get.width - 275,
                ),
                Expanded(
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Get.toNamed(Routes.drawsHistoryDetailsPage);
                    },
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: ksplashBackGroundColor),
                          color: kWhiteColor),
                      child: const Center(
                        child: Text(
                          "Draw Details",
                          style: TextStyle(
                              color: ksplashBackGroundColor,
                              fontFamily: kCircularStdNormal,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                drowResultsWidget("1", 0),
                drowResultsWidget("12", 0),
                drowResultsWidget("20", 0),
                drowResultsWidget("40", 0),
                drowResultsWidget("10", 0),
                const SizedBox(
                  height: 35,
                  width: 35,
                  child: Padding(
                      padding: EdgeInsets.all(3.0), child: Icon(Icons.add)),
                ),
                drowResultsWidget("10", 1),
                drowResultsWidget("10", 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
