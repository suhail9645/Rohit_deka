import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/checkoutPages/checkout_main_view.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.history, color: const Color(0xff018201)),
                const Text(
                  "Delivery In Tommorrow 9:30",
                  style: TextStyle(color: Color(0xff018201)),
                ),
                kboxw30(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff018ABE),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      "13 % off",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
                  ),
                )
              ],
            ),
            kbox10(),
            InkWell(
              onTap: () {
                Get.to(CheckOutMainView());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/potato.png"),
                  kboxw10(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "New Potato (Aloo)",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.ktextColor,
                            fontWeight: FontWeight.w700),
                      ),
                      kbox10(),
                      const Text(
                        "1 kg",
                        style: TextStyle(
                            color: AppColors.ktextColor,
                            fontWeight: FontWeight.w400),
                      ),
                      kbox10(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "₹ 27",
                            style: TextStyle(
                                color: AppColors.ktextColor,
                                fontWeight: FontWeight.w400),
                          ),
                          kboxw10(),
                          const Text(
                            "₹ 37",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: AppColors.ktextColor,
                                fontWeight: FontWeight.w400),
                          ),
                          kboxw30(),
                          kboxw30(),
                          kboxw30(),
                          Container(
                            height: 25.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: const Color(0xff018ABE),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Center(
                                child: Text(
                              "-    1    +",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
