import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/ui/Auth/signin/sign_in.dart';

import '../../../../config/constant/comman_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/social_login_widget.dart';
import '../../../../config/constant/font_constant.dart';
import '../../../../config/constant/color_constant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController firstNamecontroller = TextEditingController();
  TextEditingController lastNamecontroller = TextEditingController();
  TextEditingController mobileNocontroller = TextEditingController();
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
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
                  "Create New Account?",
                  style: TextStyle(
                      fontFamily: kCircularStdMedium,
                      fontSize: 15,
                      color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  hintText: "First Name",
                  name: "firstname",
                  maxLines: 1,
                  ctrl: firstNamecontroller,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  hintText: "Last Name",
                  name: "lastname",
                  maxLines: 1,
                  ctrl: lastNamecontroller,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  hintText: "Mobile Number",
                  name: "number",
                  maxLines: 1,
                  ctrl: mobileNocontroller,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: kWhiteColor,
                      activeColor: kButtonColor,
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                    ),
                    const Text(
                      "Remember Password?",
                      style: TextStyle(color: kBlackColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                CommonButton(
                  text: "Sign up",
                  onPressed: () {},
                  color: ksplashBackGroundColor,
                  textColor: kWhiteColor,
                  fontFamily: kCircularStdNormal,
                  height: 45.0,
                  width: Get.width,
                ),
                const SizedBox(
                  height: 9,
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
                  height: 18,
                ),
                const SizedBox(
                  height: 35,
                  width: 35,
                  child: SocialLoginWidget(),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontFamily: kCircularStdNormal,
                          fontSize: 12),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.off(() => const SignInPage());
                      },
                      child: const Text(
                        "Sign in",
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
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
