import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottoji/config/constant/constant.dart';

import '../onboard/onboard.dart';
import '../welcome/welcome.dart';
import '../../../config/constant/color_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var isopend = getStorage.read("onBoard") ?? 0;
    Future.delayed(const Duration(seconds: 2), () {
      if (isopend == 1) {
        Get.offAll(() => const WelcomePage());
      } else {
        Get.offAll(() => const OnBoard());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ksplashBackGroundColor,
        body: Center(
          child: TweenAnimationBuilder(
            tween: Tween(begin: 1.0, end: 1.7),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: Image.asset(
              "assets/lottoji101.png",
              height: 150,
              width: 150,
            ),
          ),
        ));
  }
}
