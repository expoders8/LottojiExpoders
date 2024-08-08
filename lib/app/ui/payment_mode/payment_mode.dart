import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../Draws/selected_draws/selected_draws.dart';
import '../../../config/constant/color_constant.dart';

class PaymentModePage extends StatefulWidget {
  const PaymentModePage({super.key});

  @override
  State<PaymentModePage> createState() => _PaymentModePageState();
}

class _PaymentModePageState extends State<PaymentModePage> {
  int? _selectedValue = 1;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedValue = value;
    });
  }

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
          "Payment Mode",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          children: [
            paymentTypeWidget("assets/icons/wallate101.png", "Wallet", 1),
            const SizedBox(
              height: 10,
            ),
            paymentTypeWidget("assets/icons/GooglePay101.png", "G-PAY", 2),
            const SizedBox(
              height: 10,
            ),
            paymentTypeWidget("assets/icons/paytm101.png", "PAYTM", 3),
            const SizedBox(
              height: 10,
            ),
            paymentTypeWidget("assets/icons/phonepay101.png", "PHONE-PE", 4),
            const SizedBox(
              height: 10,
            ),
            paymentTypeWidget("assets/icons/nb101.png", "Net Banking", 5),
            const SizedBox(
              height: 10,
            ),
            paymentTypeWidget("assets/icons/visamaster101.png", "UPI", 6),
            const SizedBox(
              height: 15,
            ),
            CommonButton(
              text: "Proceed to payment",
              onPressed: () {
                Get.off(() => SelectedDrawsPage(
                      paymentdone: 1,
                    ));
              },
              color: ksplashBackGroundColor,
              textColor: kWhiteColor,
              fontFamily: kCircularStdNormal,
              height: 45,
              width: Get.width,
            ),
          ],
        ),
      ),
    );
  }

  paymentTypeWidget(String imagepath, text, int selectedvalue) {
    return Container(
      height: 58,
      width: Get.width,
      decoration: BoxDecoration(
          border: Border.all(color: kcontainercolor, width: 1.5),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    imagepath,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 35,
              width: 35,
              child: Radio<int>(
                value: selectedvalue,
                groupValue: _selectedValue,
                onChanged: _handleRadioValueChange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
