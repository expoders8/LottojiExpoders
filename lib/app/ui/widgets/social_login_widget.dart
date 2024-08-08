import 'package:flutter/material.dart';

class SocialLoginWidget extends StatefulWidget {
  const SocialLoginWidget({super.key});

  @override
  State<SocialLoginWidget> createState() => _SocialLoginWidgetState();
}

class _SocialLoginWidgetState extends State<SocialLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/icons/google2.png",
        fit: BoxFit.cover,
        scale: 6.2,
      ),
    );
  }
}
