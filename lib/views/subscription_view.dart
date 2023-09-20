import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: Get.width,
            child: Image.asset(
              "assets/subscription_image.png",
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "smart Dish & Free Delivery\nplan",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.ktextColor,
                    fontSize: 20),
              ),
              kbox10(),
              const Text(
                "Start at ₹299 Per Month",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 15),
              ),
              kbox30(),
              Container(
                height: 189.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return kboxx();
                    },
                    separatorBuilder: (context, index) => kboxw10(),
                    itemCount: 4),
              )
            ],
          ),
        ),
      ]),
    );
  }

  kboxx() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.buttoncolor),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Costumer Profiling",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.ktextColor,
                      fontSize: 20),
                ),
                kbox5(),
                const Text(
                  "12 month (63%off)",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: AppColors.ktextColor,
                      fontSize: 14),
                ),
                kbox10(),
                const Text(
                  "₹ 299 per month",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.ktextColor,
                      fontSize: 20),
                ),
                kbox5(),
                const Text(
                  "Total - ₹ 3,499",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: AppColors.ktextColor,
                      fontSize: 14),
                ),
                kbox10(),
              ],
            ),
          ),
          Container(
            width: 230,
            color: const Color(0xffE3E3E3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/meet.png"),
                    const Text(
                      "Meal is more expensive",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: AppColors.ktextColor,
                          fontSize: 12),
                    ),
                  ]),
            ),
          ),
          Container(
            width: 230,
            decoration: const BoxDecoration(
                color: AppColors.buttoncolor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                  child: Text(
                "Buy Now",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              )),
            ),
          )
        ],
      ),
    );
  }
}
