import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';
import 'package:lottoji/app/ui/Auth/signup/sign_up.dart';
import 'package:country_list_pick/country_list_pick.dart';

import '../../../../config/constant/comman_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../../../config/constant/font_constant.dart';
import '../../../../config/constant/color_constant.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController mobileNocontroller = TextEditingController();
  String? dropValue;
  // final List<Map<String, String>> countryCode = [
  //   {"code": "+91"},
  //   {"code": "+1"},
  //   {"code": "+64"},
  //   {"code": "+44"},
  //   {"code": "+81"},
  // ];
  String selectedCountrydialCode = "+91";
  @override
  void initState() {
    super.initState();
  }

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
                  "Login Your Account",
                  style: TextStyle(
                      fontFamily: kCircularStdMedium,
                      fontSize: 15,
                      color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kTextfildColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: CountryListPick(
                        theme: CountryTheme(
                          isShowFlag: false,
                          isShowTitle: false,
                          isShowCode: true,
                          isDownIcon: false,
                          showEnglishName: true,
                        ),
                        initialSelection: 'IN',
                        onChanged: (CountryCode? code) {
                          setState(() {
                            selectedCountrydialCode = code!.dialCode.toString();
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: "Enter your mobile number",
                        name: "number",
                        maxLines: 1,
                        ctrl: mobileNocontroller,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                CommonButton(
                  text: "Get OTP",
                  onPressed: () {
                    Get.toNamed(Routes.otpPage);
                  },
                  color: ksplashBackGroundColor, // Use your specific color
                  textColor: kWhiteColor, // Use your specific text color
                  fontFamily:
                      kCircularStdNormal, // Use your specific font family
                  height: 45.0, // Set height
                  width: Get.width, // Set width
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontFamily: kCircularStdNormal,
                          fontSize: 12),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.off(() => const SignUpPage());
                      },
                      child: const Text(
                        "Sign up",
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
      ),
    );
  }
}
