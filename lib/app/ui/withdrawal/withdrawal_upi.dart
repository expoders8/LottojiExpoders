import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class WithDrawalUpiPage extends StatefulWidget {
  const WithDrawalUpiPage({super.key});

  @override
  State<WithDrawalUpiPage> createState() => _WithDrawalUpiPageState();
}

class _WithDrawalUpiPageState extends State<WithDrawalUpiPage> {
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
          "Withdrawal",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(
                    color: kRedColor,
                    fontFamily: kCircularStdNormal,
                    fontSize: 14),
              ))
        ],
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "UPI",
                    style: TextStyle(
                        fontFamily: kCircularStdMedium,
                        fontSize: 20,
                        color: kPrimaryColor),
                  ),
                  CommonButton(
                    text: "Change Method",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: kcontainercolor, // Use your specific color
                    textColor: kPrimaryColor, // Use your specific text color
                    fontFamily:
                        kCircularStdNormal, // Use your specific font family
                    height: 35.0, // Set height
                    width: 150, // Set width
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Input withdrawal amount (200-500 INR)",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 13,
                    color: kSecondaryColor),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: kSecondaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: ksplashBackGroundColor, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CommonButton(
                text: "Proceed to Withdrawl",
                onPressed: () {},
                color: ksplashBackGroundColor,
                textColor: kWhiteColor,
                fontFamily: kCircularStdNormal,
                height: 45.0,
                width: Get.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
