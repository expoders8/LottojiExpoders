import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/comman_button.dart';
import '../../../config/constant/font_constant.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/pick_crop_image.dart';

class EditProfilePage extends StatefulWidget {
  String? name;
  String? userid;
  String? phoneno;
  String? email;
  EditProfilePage({
    super.key,
    this.name,
    this.userid,
    this.phoneno,
    this.email,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController userIdcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController mobileNocontroller = TextEditingController();
  File? imagefile;
  String selectImage = "";

  @override
  void initState() {
    namecontroller.text = widget.name!;
    userIdcontroller.text = widget.userid!;
    emailcontroller.text = widget.email!;
    mobileNocontroller.text = widget.phoneno!;
    super.initState();
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
          "Edit Profile",
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
                "Save",
                style: TextStyle(
                    color: ksplashBackGroundColor,
                    fontFamily: kCircularStdNormal,
                    fontSize: 14),
              ))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        imagefile != null
                            ? Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.file(
                                    imagefile!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/icons/profile101.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                        Positioned(
                          top: 70,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              pickImage();
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                color: ksplashBackGroundColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleWidget("Name :"),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: "Name",
                name: "Name",
                maxLines: 1,
                ctrl: namecontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              titleWidget("User Id :"),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: "User Id",
                name: "User Id",
                maxLines: 1,
                ctrl: userIdcontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              titleWidget("Phone No :"),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: "Phone No",
                name: "number",
                maxLines: 1,
                ctrl: mobileNocontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              titleWidget("Email :"),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: "Email",
                name: "email",
                maxLines: 1,
                ctrl: emailcontroller,
              ),
              const SizedBox(
                height: 15,
              ),
              CommonButton(
                text: "Submit",
                onPressed: () {
                  Get.back();
                },
                color: ksplashBackGroundColor, // Use your specific color
                textColor: kWhiteColor, // Use your specific text color
                fontFamily: kCircularStdNormal, // Use your specific font family
                height: 45.0, // Set height
                width: Get.width, // Set width
              ),
            ],
          ),
        ),
      ),
    );
  }

  titleWidget(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontFamily: kCircularStdMedium,
          fontSize: 17,
          color: Color(0XFF080E31)),
    );
  }

  Future pickImage() async {
    await PickerUtils.pickImageFromGallery().then(
      (pickedFile) async {
        if (pickedFile == null) return;

        await PickerUtils.cropSelectedImage(pickedFile.path).then(
          (croppedFile) {
            if (croppedFile == null) return;
            setState(
              () {
                imagefile = File(croppedFile.path);
                selectImage = "done";
              },
            );
          },
        );
      },
    );
  }
}
