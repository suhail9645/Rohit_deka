import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/checkoutPages/checkout_main_view.dart';
import 'package:rohit_multivender/views/oders/your_oaders.dart';

import '../../utills/app_colors.dart';

class TrackOaderView extends StatelessWidget {
  const TrackOaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.ktextColor,
            )),
        title: const Text(
          "Track Order",
          style: TextStyle(
              color: AppColors.ktextColor, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kbox20(),
              const Text(
                "Order No. #123-456",
                style: TextStyle(
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
              kbox10(),
              Image.asset("assets/map.png"),
              InkWell(
                onTap: () {
                  Get.to(const YourOadersView());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.ktextColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/plan.png"),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "XYZ Delievery",
                                style: TextStyle(color: Color(0xff018ABE)),
                              ),
                              Text(
                                "Shipped ",
                                style: TextStyle(
                                    color: AppColors.ktextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "House Number,Delhi",
                                style: TextStyle(color: AppColors.ktextColor),
                              )
                            ],
                          ),
                          Image.asset("assets/momo.png")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              kbox30(),
              GestureDetector(onTap: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOutMainView(),
                      ));
              },
                child: Container(
                  height: 60.h,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.buttoncolor),
                  child: const Center(
                      child: Text(
                    "Continue Shopping",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
