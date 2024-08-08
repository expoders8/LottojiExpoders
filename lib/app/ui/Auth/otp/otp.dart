import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/ui/TabPage/tabpage.dart';

import '../../../../config/constant/comman_button.dart';
import '../../widgets/numerical_pad.dart';
import '../../../../config/constant/font_constant.dart';
import '../../../../config/constant/color_constant.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String code = "";
  int secondsRemaining = 20;
  bool enableResend = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop();
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
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
                  scale: 3.5,
                ),
                Text(
                  "Verify OTP",
                  style: TextStyle(
                    fontSize: size.width > 500 ? 30 : 22,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    textAlign: TextAlign.center,
                    "We have to sent the code verification \nto your mobile Number",
                    style: TextStyle(
                      fontSize: size.width > 500 ? 20 : 12,
                      color: kPrimaryColor,
                      fontFamily: kCircularStdNormal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildCodeNumberBox(
                        code.isNotEmpty ? code.substring(0, 1) : ""),
                    buildCodeNumberBox(
                        code.length > 1 ? code.substring(1, 2) : ""),
                    buildCodeNumberBox(
                        code.length > 2 ? code.substring(2, 3) : ""),
                    buildCodeNumberBox(
                        code.length > 3 ? code.substring(3, 4) : ""),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Resend code in ",
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: size.width > 500 ? 20 : 15,
                    fontFamily: kCircularStdNormal,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "00:40",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: size.width > 500 ? 20 : 15,
                    fontFamily: kCircularStdMedium,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonButton(
                  text: "Get OTP",
                  onPressed: () {},
                  color: ksplashBackGroundColor, // Use your specific color
                  textColor: kWhiteColor, // Use your specific text color
                  fontFamily:
                      kCircularStdNormal, // Use your specific font family
                  height: 45.0, // Set height
                  width: Get.width - 60, // Set width
                ),
                NumericPad(
                  onNumberSelected: (value) {
                    setState(() {
                      if (value != -1) {
                        if (code.length < 4) {
                          code = code + value.toString();
                        }
                      } else {
                        code = code.substring(
                            0, code.isNotEmpty ? code.length - 1 : null);
                      }
                    });
                    code.length == 4 ? Get.offAll(() => const TabPage()) : null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: size.width > 500 ? 100 : 50,
        height: size.width > 500 ? 100 : 50,
        child: Container(
          decoration: const BoxDecoration(
            color: kTextfildColor,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromARGB(20, 0, 0, 0),
                blurRadius: 8,
                offset: Offset(0, 0),
                spreadRadius: -3,
              )
            ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1565),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void otpVerification() async {
  //   LoaderX.show(context, 70.0, 70.0);
  //   try {
  //     await authService.verifyOTP(
  //         widget.mobileNo.toString(), code, widget.checkText.toString());
  //     setState(() {
  //       code = "";
  //     });
  //     LoaderX.hide();
  //   } catch (e) {
  //     if (mounted) {
  //       LoaderX.hide();
  //     }
  //     setState(() {
  //       code = "";
  //     });
  //     code = "";
  //     SnackbarUtils.showErrorSnackbar(
  //       'Failed to Login',
  //       'Enter Valid OTP',
  //     );
  //     return Future.error("Server Error");
  //   }
  // }
}
