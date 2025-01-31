import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';

class NumericPad extends StatelessWidget {
  final Function(int) onNumberSelected;

  const NumericPad({super.key, required this.onNumberSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: Get.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildNumber(1),
              buildNumber(2),
              buildNumber(3),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildNumber(4),
              buildNumber(5),
              buildNumber(6),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildNumber(7),
              buildNumber(8),
              buildNumber(9),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildEmptySpace(),
              buildNumber(0),
              buildBackspace(),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }

  Widget buildNumber(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(number);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontSize: 26,
                  color: Color(0XFF153165),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackspace() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(-1);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: const Center(
              child: ImageIcon(
                AssetImage("assets/icons/close.png"),
                color: kPrimaryColor,
                size: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmptySpace() {
    return Expanded(
      child: Container(),
    );
  }
}
