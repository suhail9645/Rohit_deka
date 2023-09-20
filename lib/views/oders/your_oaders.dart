import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/bottomNavigation/bottom_bar_view.dart';

class YourOadersView extends StatelessWidget {
  const YourOadersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.ktextColor,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Your Oader",
          style: TextStyle(color: AppColors.ktextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.ktextColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/root.png"),
                                Text(
                                  "track ",
                                  style: TextStyle(color: Color(0xff018201),fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "XYZ Delievery",
                                  style: TextStyle(color: Color(0xff018ABE)),
                                ),
                                Text(
                                  "Shipped ",
                                  style: TextStyle(color: AppColors.ktextColor,fontWeight: FontWeight.w600),
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
                  );
                },
              ),
              kbox30(),
              InkWell(onTap: () {
                Get.to(BottomNavigationBarView(select: 0,));
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
