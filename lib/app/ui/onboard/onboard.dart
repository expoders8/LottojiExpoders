import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './onboard_model.dart';
import '../welcome/welcome.dart';
import '../../../config/constant/constant.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  bool skipremove = false;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/images/onboardicon.png',
      firsttext: "Unleash Your Luck and Earn \nReal Money",
      secondtext:
          "Play games, showcase skills, earn cash \nrewards – gaming excitement!",
      thirdtext: "away",
    ),
    OnboardModel(
      img: 'assets/images/onboardicon.png',
      firsttext: "Unleash Your Luck and Earn \nReal Money",
      secondtext:
          "Play games, showcase skills, earn cash \nrewards – gaming excitement!",
      thirdtext: "spend smarter",
    ),
    OnboardModel(
      img: 'assets/images/onboardicon.png',
      firsttext: "Unleash Your Luck and Earn \nReal Money",
      secondtext:
          "Play games, showcase skills, earn cash \nrewards – gaming excitement!",
      thirdtext: " at destination",
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView.builder(
          itemCount: screens.length,
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
            if (currentIndex == screens.length - 1) {
              setState(() {
                skipremove = true;
              });
            } else {
              setState(() {
                skipremove = false;
              });
            }
          },
          itemBuilder: (_, index) {
            return SafeArea(
              child: SizedBox(
                width: size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          skipremove
                              ? CupertinoButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: kCircularStdNormal),
                                  ),
                                )
                              : CupertinoButton(
                                  onPressed: () {
                                    if (currentIndex == screens.length - 1) {
                                      setState(() {
                                        skipremove = true;
                                      });
                                    } else {
                                      setState(() {
                                        skipremove = false;
                                      });
                                    }
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 10),
                                      curve: Curves.linear,
                                    );
                                  },
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.width > 500 ? 22 : 16,
                                        fontFamily: kCircularStdNormal),
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(
                        height: size.width > 500 ? 40 : 35,
                      ),
                      Image.asset(
                        screens[index].img,
                        fit: BoxFit.cover,
                        scale: 1.1,
                      ),
                      SizedBox(
                        height: size.width > 500 ? 60 : 60,
                      ),
                      SizedBox(
                        width: size.width > 500 ? 550 : 280,
                        child: Text(
                          textAlign: TextAlign.center,
                          screens[index].firsttext,
                          style: const TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontFamily: kCircularStdMedium),
                        ),
                      ),
                      SizedBox(
                        height: size.width > 500 ? 60 : 20,
                      ),
                      SizedBox(
                        width: size.width > 500 ? 550 : 280,
                        child: Text(
                          textAlign: TextAlign.center,
                          screens[index].secondtext,
                          style: const TextStyle(
                              color: kSecondaryColor,
                              fontSize: 13,
                              fontFamily: kCircularStdNormal),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomSheet: Container(
        color: kBackGroundColor,
        height: 100,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10.0,
              child: ListView.builder(
                itemCount: screens.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentIndex == index
                          ? Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
                              width: size.width > 500 ? 45 : 30,
                              height: size.width > 500 ? 40 : 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ksplashBackGroundColor),
                            )
                          : Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
                              width: size.width > 500 ? 30 : 10,
                              height: size.width > 500 ? 20 : 20,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                    ],
                  );
                },
              ),
            ),
            CupertinoButton(
              onPressed: () {
                if (currentIndex == screens.length - 1) {
                  getStorage.write('onBoard', 1);
                  Get.offAll(() => const WelcomePage());
                }
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 10),
                  curve: Curves.linear,
                );
              },
              child: Container(
                  height: size.width > 500 ? 60 : 45,
                  width: size.width > 500 ? 62 : Get.width - 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: ksplashBackGroundColor),
                  child: const Center(
                      child: Text(
                    "Next",
                    style: TextStyle(color: kWhiteColor),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
