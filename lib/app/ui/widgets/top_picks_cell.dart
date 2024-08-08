import 'package:flutter/material.dart';
import 'package:lottoji/config/constant/color_constant.dart';
import 'package:lottoji/config/constant/font_constant.dart';

class TopPicksCell extends StatelessWidget {
  final Map iObj;
  const TopPicksCell({super.key, required this.iObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
        // color: Colors.red,
        width: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                  color: iObj["img"].toString() == "assets/icons/speker101.png"
                      ? const Color(0XFFFEEAAB)
                      : kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 2),
                        blurRadius: 5)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      iObj["img"].toString(),
                      scale: iObj["img"].toString() == "assets/icons/pen101.png"
                          ? 5.7
                          : 5.2,
                    ),
                  ),
                  Text(
                    iObj["name"].toString(),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontFamily: kCircularStdMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
