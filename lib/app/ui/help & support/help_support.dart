import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({super.key});

  @override
  State<HelpAndSupportPage> createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
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
          "Help & Support",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How can we help?",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 20,
                    color: kPrimaryColor),
              ),
              const Text(
                "Find answers to Frequently Asked Questions",
                style: TextStyle(
                    fontFamily: kCircularStdNormal,
                    fontSize: 14,
                    color: kSecondaryColor),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: kcontainercolor, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: "Ask a question?",
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: kcontainercolor, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ksplashBackGroundColor),
                      child: const Icon(
                        Icons.arrow_outward_outlined,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Top Question",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 20,
                    color: kPrimaryColor),
              ),
              const SizedBox(
                height: 15,
              ),
              topQuestionview(),
              topQuestionview(),
              topQuestionview(),
              topQuestionview(),
              topQuestionview(),
              topQuestionview(),
            ],
          ),
        ),
      ),
    );
  }

  topQuestionview() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Can i pay without a credit card?",
                  style: TextStyle(
                    fontFamily: kCircularStdNormal,
                    fontSize: 15,
                    color: kPrimaryColor,
                  ),
                ),
                Text(
                  "Payment & Billing",
                  style: TextStyle(
                    fontFamily: kCircularStdNormal,
                    fontSize: 12,
                    color: kSecondaryColor,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Image.asset(
                  "assets/icons/arrow_right_outline.png",
                  color: kPrimaryColor,
                  fit: BoxFit.cover,
                  scale: 16.0,
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
      ],
    );
  }
}
