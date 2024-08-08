// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

// import '../../../config/constant/color_constant.dart';
// import '../../../config/constant/font_constant.dart';

// class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final String ima;
//   final String actionbutton;

//   const AppBarWidget({
//     Key? key,
//     required this.title,
//     required this.actionbutton,
//   }) : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(46);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         leading: IconButton(
//           icon: Image.asset(
//             "assets/icons/arrow_left_outline.png",
//             height: 20,
//             width: 20,
//           ),
//           onPressed: () {
//             Get.back();
//           },
//         ),
//         title: const Text(
//           "Edit Profile",
//           style: TextStyle(
//               fontFamily: kCircularStdMedium,
//               color: kPrimaryColor,
//               fontSize: 18),
//         ),
//         actions: [
//           TextButton(
//               onPressed: () {
//                 Get.back();
//               },
//               child: const Text(
//                 "Save",
//                 style: TextStyle(
//                     color: ksplashBackGroundColor,
//                     fontFamily: kCircularStdNormal,
//                     fontSize: 14),
//               ))
//         ],
//         centerTitle: true,
//       );
//   }
// }
