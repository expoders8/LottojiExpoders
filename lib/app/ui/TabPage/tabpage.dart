import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottoji/app/ui/Profile/profile.dart';
import 'package:lottoji/app/ui/mytickets/mytickets.dart';

import '../Home/home.dart';
import '../Draws_History/draws_history.dart';
import '../../controller/tab_controller.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class TabPage extends StatefulWidget {
  final String? tabIndexSubscription;
  final int? selectedTabIndex;
  const TabPage(
      {super.key, this.tabIndexSubscription, this.selectedTabIndex = 0});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  // FCMNotificationServices fCMNotificationServices = FCMNotificationServices();
  final controller = Get.put(TabCountController());

  final TextStyle unselectedLabelStyle = const TextStyle(
      color: kBlack45Color, fontFamily: kCircularStdNormal, fontSize: 11);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Color.fromARGB(255, 63, 168, 248),
      fontFamily: kCircularStdNormal,
      fontSize: 11);

  @override
  void initState() {
    super.initState();
    controller.changeTabIndex(widget.selectedTabIndex!);
    // fCMNotificationServices.requestNotificationPermission();
    // notificationServices.isTokenRefresh();
    // fCMNotificationServices.firebaseInit();
    // fCMNotificationServices.getDeviceToken().then((value) => print(value));
  }

  Future getUserData() async {
    controller.changeTabIndex(0);
  }

  @override
  Widget build(BuildContext context) {
    final TabCountController tabCountController =
        Get.put(TabCountController(), permanent: false);

    return GetBuilder<TabCountController>(
      builder: (context) {
        return Scaffold(
          bottomNavigationBar:
              buildBottomNavigationMenu(context, tabCountController),
          body: Obx(
            () => IndexedStack(
              index: tabCountController.tabIndex.value,
              children: const [
                HomePage(),
                DrawsHistoryPage(),
                MyTicketPage(),
                ProfilePage(),
              ],
            ),
          ),
        );
      },
    );
  }

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(
      () => SizedBox(
        height: Platform.isIOS ? 105 : 68,
        child: Theme(
          data: ThemeData(
            splashColor: kTransparentColor,
            highlightColor: kTransparentColor,
          ),
          child: BottomNavigationBar(
            elevation: 1,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: kBackGroundColor,
            unselectedItemColor: kBlack45Color,
            selectedItemColor: kRedColor,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50),
                    color: controller.tabIndex.value == 0
                        ? ksplashBackGroundColor
                        : kWhiteColor,
                  ),
                  child: Image.asset(
                    "assets/icons/home111.png",
                    scale: 14.2,
                    color: controller.tabIndex.value == 0
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                ),
                label: "",
                backgroundColor: kBackGroundColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50),
                    color: controller.tabIndex.value == 1
                        ? ksplashBackGroundColor
                        : kWhiteColor,
                  ),
                  child: Image.asset(
                    "assets/icons/pool_ball.png",
                    scale: 10.2,
                    color: controller.tabIndex.value == 1
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                ),
                label: "",
                backgroundColor: kBackGroundColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50),
                    color: controller.tabIndex.value == 2
                        ? ksplashBackGroundColor
                        : kWhiteColor,
                  ),
                  child: Image.asset(
                    "assets/icons/tab3.png",
                    scale: 9.2,
                    color: controller.tabIndex.value == 2
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                ),
                label: "",
                backgroundColor: kBackGroundColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50),
                    color: controller.tabIndex.value == 3
                        ? ksplashBackGroundColor
                        : kWhiteColor,
                  ),
                  child: Image.asset(
                    "assets/icons/tab4.png",
                    scale: 17.2,
                    color: controller.tabIndex.value == 3
                        ? kWhiteColor
                        : kBlackColor,
                  ),
                ),
                label: "",
                backgroundColor: kBackGroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
