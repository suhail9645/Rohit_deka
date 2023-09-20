import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/bottomNavigation/bottom_bar_view.dart';

class MyPrintingView extends StatelessWidget {
   MyPrintingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(onTap: () {
                imagePick();
              },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffCAF0FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/upload_doc.png"),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Upload your Document",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: AppColors.ktextColor),
                              ),
                              kbox10(),
                              const Text(
                                "CLICK HERE TO UPLOAD",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff018ABE),
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              kbox10(),
              const Center(
                child: Text(
                  "Format : PDF, JPG  & PNG (upto 2MB)",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.ktextColor),
                ),
              ),
              kbox20(),
              const Text(
                "Enter Complete Address",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColors.ktextColor),
              ),
              kbox10(),
              const Text(
                "Save address as *",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff018ABE)),
              ),
              kbox10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [kboxxx("Home"), kboxxx("Office"), kboxxx("Other")],
              ),
              kbox20(),
              ktextField("Flat, House no, Floor, Tower"),
              kbox10(),
              ktextField("Street, Society, Landmark"),
              kbox10(),
              ktextField("Recipient’s name"),
              kbox30(),
              const Text(
                "Print Settings",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColors.ktextColor),
              ),
              kbox10(),
              ktextFieldicon("Select your Paper"),
              kbox10(),
              ktextFieldicon("Number Of Copies"),
              kbox10(),
              ktextFieldicon("Type of Print"),
              kbox40(),
              InkWell(
                onTap: () {
                
                  Timer(Duration(seconds: 3), () { 
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationBarView(
                                  select: 0,
                                )),
                      ); 
                  });
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Container(
                          height: 250.h,
                          child: Column(
                            children: [
                              Image.asset("assets/done.gif"),
                              kbox10(),
                              const Text(
                                "Document Received",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.ktextColor,
                                    fontSize: 25),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Your Document will take around 2-3 Days\nto Deliver    .",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.ktextColor,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  
                },
                child: Container(
                  height: 60.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.buttoncolor),
                  child: const Center(
                      child: Text(
                    "PRINT YOUR DOCS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
              kbox50(),
            ],
          ),
        ),
      ),
    );
  }

  ktextField(text) {
    return Container(
      height: 40.h,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.kboadercolor)),
      child: TextFormField(
          style: const TextStyle(color: AppColors.ktextColor),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              hintText: text,
              hintStyle: const TextStyle(fontSize: 15),
              border: InputBorder.none)),
    );
  }

  ktextFieldicon(text) {
    return Container(
      height: 40.h,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.kboadercolor)),
      child: TextFormField(
          style: const TextStyle(color: AppColors.ktextColor),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              hintText: text,
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: AppColors.ktextColor,
                size: 30,
              ),
              hintStyle: const TextStyle(fontSize: 15),
              border: InputBorder.none)),
    );
  }

  kboxxx(text) {
    return Container(
      height: 30.h,
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff018ABE)),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(color: AppColors.ktextColor),
      )),
    );
  }
  final ImagePicker picker = ImagePicker();
  final networkImage = ''.obs;
  XFile? image;
  File? img;
  final imagePath = ''.obs;
  final plans = [].obs;
  final isPick = false.obs;
  var userData;

  imagePick() async {
    image =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (image != null) {
      isPick.value = true;
      img = File(image!.path);
      imagePath.value = image!.path;
     
    }
  }
}
