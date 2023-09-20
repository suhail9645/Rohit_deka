import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';

class RattingReviewView extends StatelessWidget {
  const RattingReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Rating & Review",
          style: TextStyle(color: AppColors.ktextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Send your feedback",
              style: TextStyle(color: AppColors.ktextColor, fontSize: 20),
            ),
            kbox10(),
            const Text(
              "Tell us your honest feedback to help us improve ",
              style: TextStyle(color: AppColors.grey, fontSize: 15),
            ),
            kbox20(),
            Container(
              //height: 100.h,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Enter your feedback",
                      style:
                          TextStyle(color: AppColors.ktextColor, fontSize: 20),
                    ),
                    kbox10(),
                    TextFormField(
                      style: TextStyle(color: AppColors.ktextColor),
                      maxLines: 4,
                      decoration: InputDecoration(border: InputBorder.none),
                    )
                  ],
                ),
              ),
            ),
            kbox20(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: RatingBar.builder(
                    glowRadius: 23,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                kbox10(),
                const Text(
                  "Give Rating",
                  style: TextStyle(color: AppColors.ktextColor, fontSize: 20),
                ),
                kbox30(),
                Container(width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.buttoncolor),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "SUMBIT FEEDBACK",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
