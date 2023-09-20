import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/bottomNavigation/bottom_bar_view.dart';

class SuccessPayment extends StatefulWidget {
  const SuccessPayment({super.key});

  @override
  State<SuccessPayment> createState() => _SuccessPaymentState();
}

class _SuccessPaymentState extends State<SuccessPayment> {
  @override
  void initState() {
   Timer(Duration(seconds: 2), () {
     mainpayment = false;
     showRating = true;
     Get.offAll(BottomNavigationBarView(select: 0,));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                 // Get.to(BottomNavigationBarView(select: 0,));
                },
                child: Image.asset("assets/verify.png")),
            kbox10(),
            const Text("Pay Successfull",
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
