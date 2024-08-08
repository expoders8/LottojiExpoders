import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../controller/tab_controller.dart';
import 'package:lottoji/app/routes/app_pages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottoji/config/constant/font_constant.dart';
import 'package:lottoji/config/constant/color_constant.dart';

import '../widgets/top_picks_cell.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TabCountController tabCountController = Get.find<TabCountController>();
  final CarouselController _pageController = CarouselController();
  int _currentPageIndex = 0;
  // final List<Map<String, dynamic>> topPicksArr = [];
  int selectCatgoryIndex = 0, selectAsstenIndex = 0;
  final tabController = Get.put(TabCountController());
  String selectedPerson = "";
  var iObj;
  List topPicksArr = [
    {
      "name": "My\nchoice",
      "author": "Michael Rosen",
      "img": "assets/icons/pen101.png",
    },
    {
      "name": "Popular\nChoice",
      "author": "Marcus Berkmann",
      "img": "assets/icons/speker101.png",
    },
    {
      "name": "My\nchoice",
      "author": "Stride Lottie",
      "img": "assets/icons/files101.png",
    }
  ];
  Duration duration = const Duration(days: 4, hours: 2, minutes: 29);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/icons/profile101.png'),
          ),
          onPressed: () {
            tabCountController.changeTabIndex(3);
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi Ronak! Your balance:',
              style: TextStyle(
                fontFamily: kCircularStdNormal,
                color: kSecondaryColor,
                fontSize: 12,
              ),
            ),
            Text(
              "\$200",
              style: TextStyle(
                fontFamily: kCircularStdMedium,
                color: kPrimaryColor,
                fontSize: 18,
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: kBlack12Color, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "assets/icons/wallate111.png",
                  color: ksplashBackGroundColor,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: kBlack12Color, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "assets/icons/bell22.png",
                  fit: BoxFit.cover,
                  scale: 0.3,
                ),
              ),
            ),
            onPressed: () {
              Get.toNamed(Routes.notificationPage);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: Get.width,
                height: 150,
                color: kcontainercolor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lottoji",
                            style: TextStyle(
                              fontFamily: kCircularStdBold,
                              fontSize: 35,
                              color: Color(0XFF15143C),
                            ),
                          ),
                          Text(
                            "Win \$225 000!",
                            style: TextStyle(
                              fontFamily: kCircularStdBold,
                              fontSize: 25,
                              color: Color(0XFFFFBE1A),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                color: ksplashBackGroundColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/errow111.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 95,
                    width: Get.width - 50,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Draw Starts in",
                                style: TextStyle(
                                  fontFamily: kCircularStdNormal,
                                  fontSize: 18,
                                  color: kSecondaryColor,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '4',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    TextSpan(
                                      text: 'd ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: '2',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    TextSpan(
                                      text: 'h ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: '29',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    TextSpan(
                                      text: 'min',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.upcomingDrawsHistoryPage);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      color: kcontainercolor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icons/hook111.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        const Text(
                                          "Rules",
                                          style: TextStyle(
                                              color: kSecondaryColor,
                                              fontFamily: kCircularStdNormal,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Play With",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kCircularStdMedium,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    "assets/icons/quations.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: Get.width - 30,
            height: 210,
            child: CarouselSlider.builder(
              itemCount: topPicksArr.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                final iObj = topPicksArr[itemIndex];
                return TopPicksCell(
                  iObj: iObj,
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 0.5,
                reverse: true,
                enlargeCenterPage: true,
                viewportFraction: 0.40,
                enlargeFactor: 0.4,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                disableCenter: false,
                enableInfiniteScroll: false,
                initialPage: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
              ),
              carouselController: _pageController,
            ),
          ),
          SizedBox(
            height: 10.0,
            child: ListView.builder(
              itemCount: topPicksArr.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _currentPageIndex == index
                        ? Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3.0),
                            width: 30,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ksplashBackGroundColor,
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3.0),
                            width: 10,
                            height: 20,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Last Draw results",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: kCircularStdMedium,
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    tabCountController.changeTabIndex(1);
                  },
                  child: const Text(
                    "See History",
                    style: TextStyle(
                      color: ksplashBackGroundColor,
                      fontFamily: kCircularStdNormal,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
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
}
