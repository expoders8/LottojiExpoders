import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';
import 'package:lottoji/app/ui/Auth/signin/sign_in.dart';
import 'package:lottoji/app/ui/profile/edit_profile.dart';

import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "", userid = "", email = "", phoneno = "";
  @override
  void initState() {
    name = "Pranit Rav";
    userid = "User023023";
    email = "Abc@gmail.com";
    phoneno = "+91 95 20 850 00";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/icons/profile101.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kCircularStdMedium,
                            fontSize: 22),
                      ),
                      Text(
                        userid,
                        style: const TextStyle(
                            color: kSecondaryColor,
                            fontFamily: kCircularStdNormal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width - 275,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => EditProfilePage(
                              email: email,
                              name: name,
                              phoneno: phoneno,
                              userid: userid,
                            ));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Image.asset(
                          "assets/icons/edit.png",
                          fit: BoxFit.cover,
                          scale: 8.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "My Balance",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 17,
                    color: Color(0XFF080E31)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ksplashBackGroundColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [ksplashBackGroundColor, kBlackColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: const BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/icons/money.png",
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
                                "500 INR",
                                style: TextStyle(
                                  fontFamily: kCircularStdMedium,
                                  fontSize: 18,
                                  color: kWhiteColor,
                                ),
                              ),
                              Text(
                                "Balance",
                                style: TextStyle(
                                  fontFamily: kCircularStdMedium,
                                  fontSize: 12,
                                  color: kWhiteColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: Get.width - 220,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const BalanceDetailsSheet();
                                  },
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Image.asset(
                                  "assets/icons/arrow_right_outline.png",
                                  fit: BoxFit.cover,
                                  scale: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: CommonButton(
                              text: "Deposit",
                              onPressed: () {
                                Get.toNamed(Routes.depositPage);
                              },
                              color: kWhiteColor,
                              textColor: ksplashBackGroundColor,
                              fontFamily: kCircularStdNormal,
                              height: 38.0,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 100,
                            child: CommonButton(
                              text: "Withdrawl",
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const BalanceDetailsSheet();
                                  },
                                );
                              },
                              color: kWhiteColor,
                              textColor: ksplashBackGroundColor,
                              fontFamily: kCircularStdNormal,
                              height: 38.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Personal Details",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 17,
                    color: Color(0XFF080E31)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kiconBackgroundColor),
                    child: const Icon(
                      Icons.phone,
                      color: ksplashBackGroundColor,
                      size: 25,
                    ),
                    // Image.asset(
                    //   "assets/icons/phonepay101.png",
                    //   fit: BoxFit.contain,
                    // ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    phoneno,
                    style: const TextStyle(
                        fontSize: 17,
                        color: kSecondaryColor,
                        fontFamily: kCircularStdNormal),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kiconBackgroundColor),
                    child: const Icon(
                      Icons.email,
                      color: ksplashBackGroundColor,
                      size: 25,
                    ),
                    // Image.asset(
                    //   "assets/icons/phonepay101.png",
                    //   fit: BoxFit.contain,
                    // ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                        fontSize: 17,
                        color: kSecondaryColor,
                        fontFamily: kCircularStdNormal),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "History",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 17,
                    color: Color(0XFF080E31)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kiconBackgroundColor),
                    child: Padding(
                      padding: const EdgeInsets.all(2.8),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/pool_ball.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Draw History",
                    style: TextStyle(
                        fontSize: 17,
                        color: kSecondaryColor,
                        fontFamily: kCircularStdNormal),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Setting",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 17,
                    color: Color(0XFF080E31)),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.notificationPage);
                },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kiconBackgroundColor),
                      child: const Icon(
                        Icons.notifications,
                        color: ksplashBackGroundColor,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Notification",
                      style: TextStyle(
                          fontSize: 17,
                          color: kSecondaryColor,
                          fontFamily: kCircularStdNormal),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.helpAndSupportPage);
                },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kiconBackgroundColor),
                      child: const Icon(
                        Icons.question_mark_rounded,
                        color: ksplashBackGroundColor,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Help & Support",
                      style: TextStyle(
                          fontSize: 17,
                          color: kSecondaryColor,
                          fontFamily: kCircularStdNormal),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => const SignInPage());
                },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kiconBackgroundColor),
                      child: const Icon(
                        Icons.logout,
                        color: ksplashBackGroundColor,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Log Out",
                      style: TextStyle(
                          fontSize: 17,
                          color: ksplashBackGroundColor,
                          fontFamily: kCircularStdNormal),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BalanceDetailsSheet extends StatelessWidget {
  const BalanceDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: kCircularStdNormal,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 20),
          const Text(
            '500 INR',
            style: TextStyle(
              fontSize: 24,
              fontFamily: kCircularStdMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const BalanceRow(label: 'Unsettled draws', amount: '0.00 INR'),
                const Divider(),
                const BalanceRow(
                    label: 'Available for withdrawl', amount: '500 INR'),
                const Divider(),
                const BalanceRow(
                    label: 'Pending Withdrawl', amount: '0.00 INR'),
                const SizedBox(height: 30),
                CommonButton(
                  text: "Withdrawl",
                  onPressed: () {
                    Get.toNamed(Routes.withDrawalPage);
                  },
                  color: ksplashBackGroundColor,
                  textColor: kWhiteColor,
                  fontFamily: kCircularStdNormal,
                  height: 35.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceRow extends StatelessWidget {
  final String label;
  final String amount;

  const BalanceRow({super.key, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
                fontSize: 14,
                color: kSecondaryColor,
                fontFamily: kCircularStdNormal),
          ),
          Text(
            amount,
            style: const TextStyle(fontSize: 14, color: kSecondaryColor),
          ),
        ],
      ),
    );
  }
}
