import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';
import 'package:lottoji/config/constant/font_constant.dart';
import 'package:lottoji/config/constant/color_constant.dart';

import '../../../../config/constant/comman_button.dart';
import '../../widgets/dash_divider.dart';

class UpcomingDrawsHistoryPage extends StatefulWidget {
  const UpcomingDrawsHistoryPage({super.key});

  @override
  State<UpcomingDrawsHistoryPage> createState() =>
      _UpcomingDrawsHistoryPageState();
}

class _UpcomingDrawsHistoryPageState extends State<UpcomingDrawsHistoryPage> {
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
          "Draws",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today",
              style: TextStyle(
                  fontFamily: kCircularStdMedium,
                  fontSize: 20,
                  color: Color(0XFF080E31)),
            ),
            const SizedBox(
              height: 10,
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFF6D9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/8ballpool.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lottoji",
                            style: TextStyle(
                              fontFamily: kCircularStdBold,
                              fontSize: 30,
                              color: Color(0XFF15143C),
                            ),
                          ),
                          Text(
                            "Win \$225 000!",
                            style: TextStyle(
                              fontFamily: kCircularStdBold,
                              fontSize: 22,
                              color: Color(0XFFFFBE1A),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: kWhiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 30,
                          width: 15,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 249, 242, 242),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        DashedLineDivider(width: Get.width - 100),
                        const SizedBox(
                          height: 30,
                          width: 15,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 249, 242, 242),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25),
                  //   child: DashedLineDivider(),
                  // ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Draw Starts in",
                            style: TextStyle(
                              fontFamily: kCircularStdNormal,
                              fontSize: 15,
                              color: kSecondaryColor,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '4',
                                  style: TextStyle(fontSize: 24),
                                ),
                                TextSpan(
                                  text: 'd ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                TextSpan(
                                  text: '2',
                                  style: TextStyle(fontSize: 24),
                                ),
                                TextSpan(
                                  text: 'h ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                TextSpan(
                                  text: '29',
                                  style: TextStyle(fontSize: 24),
                                ),
                                TextSpan(
                                  text: 'min',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: CommonButton(
                          text: "Buy Ticket",
                          onPressed: () {
                            Get.toNamed(Routes.createTicketDrawsPage);
                          },
                          color: ksplashBackGroundColor,
                          textColor: kWhiteColor,
                          fontFamily: kCircularStdNormal,
                          height: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
