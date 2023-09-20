import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/constant_box.dart';

import '../../utills/app_colors.dart';

class AddMoneyView extends StatelessWidget {
  const AddMoneyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          "Add Money",
          style: TextStyle(color: AppColors.ktextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Total Balance",
              style: TextStyle(
                  color: AppColors.ktextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            const Divider(
              color: AppColors.ktextColor,
            ),
            kbox20(),
            Center(
              child: Column(
                children: [
                  const Text(
                    "Add Money",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  kbox10(),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        hintText: "₹ 200",
                        hintStyle: TextStyle(color: AppColors.ktextColor),
                        border: InputBorder.none),
                  ),
                  kbox10(),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.buttoncolor),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "Add Money",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ),
                    ),
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
