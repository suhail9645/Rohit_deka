import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/bottomNavigation/bottom_bar_view.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Get.to(BottomNavigationBarView(select: 0,));
                },
                child: Image.asset("assets/verify.png")),
            kbox10(),
            const Text("Verified",
                style: TextStyle(
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16))
          ],
        ),
      ),
    );
  }
}
