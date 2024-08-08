import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class DrawsHistoryDetailsPage extends StatefulWidget {
  const DrawsHistoryDetailsPage({super.key});

  @override
  State<DrawsHistoryDetailsPage> createState() =>
      _DrawsHistoryDetailsPageState();
}

class _DrawsHistoryDetailsPageState extends State<DrawsHistoryDetailsPage> {
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
          "Draw Details",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Thu, 4:59 AM",
                      style: TextStyle(
                          fontFamily: kCircularStdMedium,
                          fontSize: 15,
                          color: kSecondaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    drowResultsWidget("1", 0),
                    drowResultsWidget("12", 0),
                    drowResultsWidget("20", 0),
                    drowResultsWidget("40", 0),
                    drowResultsWidget("10", 0),
                    const SizedBox(
                      height: 35,
                      width: 35,
                      child: Padding(
                          padding: EdgeInsets.all(3.0), child: Icon(Icons.add)),
                    ),
                    drowResultsWidget("10", 1),
                    drowResultsWidget("10", 1),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
            },
            children: [
              buildTableHeader(),
              buildTableRow('6', '₹200', '1', '₹200'),
              buildTableRow('5+ Bonus', '₹100', '28', '₹100'),
              buildTableRow('5', '₹200', '35', '₹200'),
              buildTableRow('4+ Bonus', '₹100', '1', '₹100'),
              buildTableRow('6', '₹200', '28', '₹200'),
              buildTableRow('5+ Bonus', '₹100', '35', '₹100'),
              buildTableRow('5', '₹200', '1', '₹200'),
              buildTableRow('4+ Bonus', '₹100', '28', '₹100'),
              buildTableRow('2+ Bonus', '₹300', '35', '₹300'),
              buildTotalRow('Total', '192', '₹1500'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CommonButton(
            text: "How to claim",
            onPressed: () {},
            color: ksplashBackGroundColor,
            textColor: kWhiteColor,
            fontFamily: kCircularStdNormal,
            height: 45,
            width: Get.width - 150,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Result Last Updated : Sat 3 Feb 2024 at 21:12:12:51",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kPrimaryColor,
                fontFamily: kCircularStdNormal,
                fontSize: 12),
          ),
        ],
      ),
    );
  }

  drowResultsWidget(text, int color) {
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

  TableRow buildTableHeader() {
    return TableRow(
      decoration: const BoxDecoration(color: ksplashBackGroundColor),
      children: [
        tableCell('Match', 1, isHeader: true),
        tableCell('Prize', 0, isHeader: true),
        tableCell('Winners', 0, isHeader: true),
        tableCell('Prize Fund', 0, isHeader: true),
      ],
    );
  }

  TableRow buildTableRow(
      String match, String prize, String winners, String prizeFund) {
    return TableRow(
      children: [
        tableCell(match, 1),
        tableCell(prize, 0),
        tableCell(winners, 0),
        tableCell(prizeFund, 0),
      ],
    );
  }

  TableRow buildTotalRow(
      String totalLabel, String totalWinners, String totalPrizeFund) {
    return TableRow(
      decoration: const BoxDecoration(color: kPrimaryColor),
      children: [
        tableCell(totalLabel, 1, isTotal: true),
        tableCell('', 0, isTotal: true),
        tableCell(totalWinners, 0, isTotal: true),
        tableCell(totalPrizeFund, 0, isTotal: true),
      ],
    );
  }

  Widget tableCell(String text, int match,
      {bool isHeader = false, bool isTotal = false}) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 12, right: 10, bottom: 12),
      color: isHeader
          ? ksplashBackGroundColor
          : isTotal
              ? kPrimaryColor
              : kWhiteColor,
      child: Text(text,
          style: TextStyle(
            fontSize: 10,
            color: isHeader || isTotal ? kWhiteColor : kPrimaryColor,
            fontFamily:
                isHeader || isTotal ? kCircularStdMedium : kCircularStdNormal,
          ),
          textAlign: match == 1 ? TextAlign.justify : TextAlign.center),
    );
  }
}
