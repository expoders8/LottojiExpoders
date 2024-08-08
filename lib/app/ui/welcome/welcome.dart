import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';
import 'package:lottoji/config/constant/font_constant.dart';

import '../../../config/constant/comman_button.dart';
import '../widgets/social_login_widget.dart';
import '../../../config/constant/color_constant.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Image.asset(
                  "assets/lottoji101.png",
                  fit: BoxFit.cover,
                  scale: 2.9,
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "Welcome to Lottoji",
                  style: TextStyle(
                      fontFamily: kCircularStdMedium,
                      fontSize: 21,
                      color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Sign in to enjoy full features",
                  style: TextStyle(
                      fontFamily: kCircularStdMedium,
                      fontSize: 16,
                      color: kSecondaryColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: CommonButton(
                    text: "Sign in with Phone Number",
                    onPressed: () {
                      Get.toNamed(Routes.signInPage);
                    },
                    color: ksplashBackGroundColor,
                    textColor: kWhiteColor,
                    fontFamily: kCircularStdNormal,
                    height: 45,
                    width: Get.width,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: CommonButton(
                    text: "Sign up",
                    onPressed: () {
                      Get.toNamed(Routes.signUpPage);
                    },
                    color: kBlackColor,
                    textColor: kWhiteColor,
                    fontFamily: kCircularStdNormal,
                    height: 45,
                    width: Get.width,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Line.png",
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "Or",
                        style: TextStyle(
                            fontFamily: kCircularStdNormal,
                            fontSize: 10,
                            color: kSecondaryColor),
                      ),
                    ),
                    Image.asset(
                      "assets/images/Line.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 35,
                  width: 35,
                  child: SocialLoginWidget(),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By Logging in, you agree to the ",
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontFamily: kCircularStdNormal,
                          fontSize: 12),
                    ),
                    Text(
                      "Terms of service",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: ksplashBackGroundColor,
                          textBaseline: TextBaseline.ideographic,
                          fontFamily: kCircularStdNormal,
                          fontSize: 12),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "and ",
                      style: TextStyle(
                          color: kSecondaryColor,
                          textBaseline: TextBaseline.ideographic,
                          fontFamily: kCircularStdNormal,
                          fontSize: 12),
                    ),
                    Text(
                      "Privacy policy",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: ksplashBackGroundColor,
                          textBaseline: TextBaseline.ideographic,
                          fontFamily: kCircularStdNormal,
                          fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
