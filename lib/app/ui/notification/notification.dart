import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          "Notifications",
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
                borderRadius: BorderRadius.circular(10),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                              "assets/icons/trofy.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Congratulations! You've Won!",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 13,
                            color: kPrimaryColor,
                          ),
                        ),
                        const Text(
                          "You're a winner in our latest draw! Check your \nticket for the jackpot or other prizes",
                          style: TextStyle(
                            fontFamily: kCircularStdNormal,
                            fontSize: 10,
                            color: kSecondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "View Ticket",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ksplashBackGroundColor,
                                textBaseline: TextBaseline.ideographic,
                                fontFamily: kCircularStdNormal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "10:24 Am",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontFamily: kCircularStdNormal,
                      fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Yesterday",
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
                borderRadius: BorderRadius.circular(10),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                              "assets/icons/trofy.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Congratulations! You've Won!",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 13,
                            color: kPrimaryColor,
                          ),
                        ),
                        const Text(
                          "You're a winner in our latest draw! Check your \nticket for the jackpot or other prizes",
                          style: TextStyle(
                            fontFamily: kCircularStdNormal,
                            fontSize: 10,
                            color: kSecondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "View Ticket",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ksplashBackGroundColor,
                                textBaseline: TextBaseline.ideographic,
                                fontFamily: kCircularStdNormal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "10:24 Am",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontFamily: kCircularStdNormal,
                      fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                              "assets/icons/trofy.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Congratulations! You've Won!",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 13,
                            color: kPrimaryColor,
                          ),
                        ),
                        const Text(
                          "You're a winner in our latest draw! Check your \nticket for the jackpot or other prizes",
                          style: TextStyle(
                            fontFamily: kCircularStdNormal,
                            fontSize: 10,
                            color: kSecondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "View Ticket",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ksplashBackGroundColor,
                                textBaseline: TextBaseline.ideographic,
                                fontFamily: kCircularStdNormal,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "10:24 Am",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontFamily: kCircularStdNormal,
                      fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
