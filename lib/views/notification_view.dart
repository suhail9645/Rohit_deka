import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(onTap: () {
          Get.back();
        },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.ktextColor,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Notification (4)",
          style: TextStyle(color: AppColors.ktextColor),
        ),
        actions: [
          const Icon(
            Icons.info_outline_rounded,
            color: AppColors.ktextColor,
          ),
          kboxw20(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 224, 230),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.darkblue)),
                  child: const Center(
                      child: Text(
                    "All",
                    style: TextStyle(color: AppColors.ktextColor),
                  )),
                ),
                kboxw30(),
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: AppColors.darkblue,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.darkblue)),
                  child: const Center(
                      child: Text(
                    "Other's",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
            kbox20(),
            ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: AppColors.ktextColor,
              ),
              itemCount: images.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 40.h,
                  child: Row(
                    children: [
                      Image.asset(images[index]),
                      kboxw10(),
                      Text(
                        text[index],
                        style: TextStyle(color: AppColors.ktextColor),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  List images = [
    "assets/shdued.png",
    "assets/y_delevery.png",
    "assets/setting.png",
    "assets/add_acc.png",
    "assets/new_update.png"
  ];
  List text = [
    "You schedule of online claases is near",
    "Your delivery is deliveren on 1 sept",
    "Your Setting updated now.",
    "Tejas Aher is added in this account",
    "New Upadate is avaiable."
  ];
}
