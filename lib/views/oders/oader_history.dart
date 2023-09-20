import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';

class OaderHistoryView extends StatelessWidget {
  const OaderHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Order History",
          style: TextStyle(color: AppColors.ktextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Image.asset("assets/history.png",
            //         color: const Color(0xff018201)),
            //     const Text(
            //       "Delivery In Tommorrow 9:30",
            //       style: TextStyle(color: Color(0xff018201)),
            //     ),
            //     kboxw30(),
            //     Container(
            //       height: 30.h,
            //       width: 80.w,
            //       decoration: BoxDecoration(
            //           color: const Color(0xff018ABE),
            //           borderRadius: BorderRadius.circular(8)),
            //       child: const Center(
            //           child: Text(
            //         "13 % off",
            //         style: TextStyle(
            //             color: Colors.white, fontWeight: FontWeight.w700),
            //       )),
            //     )
            //   ],
            // ),
            kbox10(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xffABABAB))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/potato.png"),
                    kboxw10(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "New Potato (Aloo)",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.ktextColor,
                                  fontWeight: FontWeight.w700),
                            ),
                            kboxw10(),
                            Container(
                              height: 25.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xff018ABE),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                  child: Text(
                                "13 % off",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            )
                          ],
                        ),
                        kbox10(),
                        const Text(
                          "1 kg",
                          style: TextStyle(
                              color: AppColors.ktextColor, fontWeight: FontWeight.w400),
                        ),
                        kbox10(),
                        Row(
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
                          ],
                        ),
                        kbox10(),
                        const Text(
                          "Tell us about your experience",
                          style: TextStyle(
                              color: Color(0xff018ABE),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
