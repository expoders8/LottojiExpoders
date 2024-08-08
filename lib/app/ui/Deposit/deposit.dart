import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  int selectedIndex = -1;
  String selectedText = '';
  TextEditingController upiIdController = TextEditingController();
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
          "Deposit",
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
                    "Phone Pay",
                    style: TextStyle(
                        fontFamily: kCircularStdMedium,
                        fontSize: 20,
                        color: kPrimaryColor),
                  ),
                  CommonButton(
                    text: "Change Method",
                    onPressed: () {},
                    color: kcontainercolor,
                    textColor: kPrimaryColor,
                    fontFamily: kCircularStdNormal,
                    height: 35,
                    width: 150,
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
                "Enter the dposit amount (300-50000 INR)",
                style: TextStyle(
                    fontFamily: kCircularStdMedium,
                    fontSize: 13,
                    color: kSecondaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: upiIdController,
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
                text: "Proceed to pay",
                onPressed: () {},
                color: ksplashBackGroundColor,
                textColor: kWhiteColor,
                fontFamily: kCircularStdNormal,
                height: 45,
                width: Get.width,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectDrawsNumberWidget(0, "500"),
                  selectDrawsNumberWidget(1, "1000"),
                  selectDrawsNumberWidget(2, "2500"),
                  selectDrawsNumberWidget(3, "5000"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectDrawsNumberWidget(int index, String text) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          selectedText = text;
          upiIdController.text = selectedText;
        });
      },
      child: Container(
        height: 30,
        width: 62,
        decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : kcontainercolor,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
