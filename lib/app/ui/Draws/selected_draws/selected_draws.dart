import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottoji/app/routes/app_pages.dart';
import '../../../../config/constant/comman_button.dart';
import '../../../../config/constant/font_constant.dart';
import '../../../../config/constant/color_constant.dart';

// ignore: must_be_immutable
class SelectedDrawsPage extends StatefulWidget {
  int? paymentdone;
  SelectedDrawsPage({super.key, this.paymentdone});

  @override
  State<SelectedDrawsPage> createState() => _SelectedDrawsPageState();
}

class _SelectedDrawsPageState extends State<SelectedDrawsPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.paymentdone == 1) {
        Navigator.of(context).pop();
        Timer(const Duration(seconds: 0), () {
          _showAlertBox(context);
        });
      }
    });
    super.initState();
  }

  void _showAlertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/icons/congratulation_icon.png",
                fit: BoxFit.cover,
                scale: 3.5,
              ),
              const SizedBox(height: 16),
              const Text(
                'Thank You for buying Tickets',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: kCircularStdMedium,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'We emailed you confirmation for your\norder no. FLG-97623-8025',
                style: TextStyle(
                  fontSize: 12,
                  color: kSecondaryColor,
                  fontFamily: kCircularStdNormal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              CommonButton(
                text: "Check My Order",
                onPressed: () {},
                color: ksplashBackGroundColor,
                textColor: kWhiteColor,
                fontFamily: kCircularStdNormal,
                height: 35,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Back to Home',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: kCircularStdNormal,
                    textBaseline: TextBaseline.ideographic,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
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
          "Popular Draws",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: Get.height - 170,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Added draws",
                      style: TextStyle(
                          fontFamily: kCircularStdMedium,
                          fontSize: 17,
                          color: Color(0XFF080E31)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        selectDrawsNumberWidget("1", 0),
                        const SizedBox(
                          width: 10,
                        ),
                        selectDrawsNumberWidget("2", 0),
                        const SizedBox(
                          width: 10,
                        ),
                        selectDrawsNumberWidget("3", 0),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Number of draws",
                          style: TextStyle(
                              fontFamily: kCircularStdMedium,
                              fontSize: 18,
                              color: Color(0XFF080E31)),
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: kcontainercolor,
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _incrementCounter();
                                },
                                icon: const SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(Icons.add)),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Center(child: Text("$_counter"))),
                              ),
                              IconButton(
                                onPressed: () {
                                  _decrementCounter();
                                },
                                icon: const SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(Icons.remove)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectDrawsNumberWidget("1", 0),
                        selectDrawsNumberWidget("12", 0),
                        selectDrawsNumberWidget("20", 0),
                        selectDrawsNumberWidget("40", 0),
                        selectDrawsNumberWidget("10", 0),
                        const SizedBox(
                          height: 30,
                          width: 30,
                          child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.add)),
                        ),
                        selectDrawsNumberWidget("10", 1),
                        selectDrawsNumberWidget("8", 1),
                        const SizedBox(
                          height: 30,
                          width: 30,
                          child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.more_vert)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectDrawsNumberWidget("1", 0),
                        selectDrawsNumberWidget("12", 0),
                        selectDrawsNumberWidget("20", 0),
                        selectDrawsNumberWidget("40", 0),
                        selectDrawsNumberWidget("10", 0),
                        const SizedBox(
                          height: 30,
                          width: 30,
                          child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.add)),
                        ),
                        selectDrawsNumberWidget("10", 1),
                        selectDrawsNumberWidget("8", 1),
                        const SizedBox(
                          height: 30,
                          width: 30,
                          child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.more_vert)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectDrawsNumberWidget("1", 0),
                        selectDrawsNumberWidget("12", 0),
                        selectDrawsNumberWidget("20", 0),
                        selectDrawsNumberWidget("40", 0),
                        selectDrawsNumberWidget("10", 0),
                        const SizedBox(
                          height: 30,
                          width: 30,
                          child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.add)),
                        ),
                        selectDrawsNumberWidget("10", 1),
                        selectDrawsNumberWidget("8", 1),
                        const SizedBox(
                          height: 30,
                          width: 30,
                          child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.more_vert)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 86,
              width: Get.width,
              decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kCircularStdMedium,
                              fontSize: 18),
                        ),
                        Text(
                          "\$30.50",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kCircularStdMedium,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Get.width - 220,
                    ),
                    Expanded(
                      child: CommonButton(
                        text: "Pay Now",
                        onPressed: () {
                          Get.toNamed(Routes.paymentModePage);
                        },
                        color: ksplashBackGroundColor,
                        textColor: kWhiteColor,
                        fontFamily: kCircularStdNormal,
                        height: 35,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  selectDrawsNumberWidget(text, int color) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: color == 1 ? const Color(0XFFF9E5A8) : kcontainercolor,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Padding(
          padding: const EdgeInsets.all(3.0), child: Center(child: Text(text))),
    );
  }
}
