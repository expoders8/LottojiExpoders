import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottoji/config/constant/color_constant.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  double _page = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    PageController pageController = PageController(initialPage: 0);

    pageController.addListener(
      () {
        setState(
          () {
            _page = pageController.page ?? 0;
          },
        );
      },
    );

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  List<Widget> cards = [];

                  for (int i = 0; i < 3; i++) {
                    double currentPageValue = i - _page;
                    bool pageLocation = currentPageValue > 0;

                    double start = 30 +
                        max(
                            (200) -
                                (100) -
                                currentPageValue * (pageLocation ? 50 : 1),
                            0.0);

                    var customizableCard = Positioned.directional(
                      top: 20 + 30 * max(-currentPageValue, 0.0),
                      bottom: 20 + 30 * max(-currentPageValue, 0.0),
                      start: start,
                      textDirection: TextDirection.ltr,
                      child: Container(
                        height: width * .67,
                        width: width * .55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.15),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                    cards.add(customizableCard);
                  }
                  return Stack(children: cards);
                },
              ),
            ),
            Positioned.fill(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: 3, // Set the number of pages to 3
                controller: pageController,
                itemBuilder: (context, index) {
                  return const SizedBox(); // Empty widget for the PageView
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
