import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/checkoutPages/payment_success.dart';

class PaymentOptionView extends StatelessWidget {
  const PaymentOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            )),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Payment",
          style: TextStyle(color: AppColors.ktextColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount to be paid",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 18.22,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "₹ 724.00",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 15.22,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              height: 3,
              width: Get.width,
              color: AppColors.ktextColor,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Suggested for you",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.ktextColor),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    minVerticalPadding: 20,
                    // contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.ktextColor)),
                        child: Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: AppColors.ktextColor,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                    title: const Text(
                      "Kotak Mahindra Bank UPI",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      "Account No.  xxxx xxxx 6746",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    trailing: Image.asset("assets/upi.png"),
                  ),
                  ListTile(
                    //   horizontalTitleGap: 10,
                    minLeadingWidth: 10,
                    minVerticalPadding: 20,
                    // contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.ktextColor)),
                        child: Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: AppColors.ktextColor,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                    title: const Text(
                      "Google Pay UPI",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      "tejasaher67@gmail.com",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    trailing: Image.asset("assets/gp.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "All other option",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  ListTile(
                    //   horizontalTitleGap: 10,
                    minLeadingWidth: 10,
                    minVerticalPadding: 20,
                    // contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.ktextColor)),
                      ),
                    ),
                    title: const Text(
                      "UPI",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),

                    trailing: Image.asset("assets/bhim.png"),
                  ),
                  ListTile(
                    //   horizontalTitleGap: 10,
                    minLeadingWidth: 10,
                    minVerticalPadding: 20,
                    // contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.ktextColor)),
                      ),
                    ),
                    title: const Text(
                      "Wallets",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),

                    trailing: Image.asset(
                      "assets/wallete1.png",
                      color: AppColors.ktextColor,
                    ),
                  ),
                  ListTile(
                    //   horizontalTitleGap: 10,
                    minLeadingWidth: 10,
                    minVerticalPadding: 20,
                    // contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.ktextColor)),
                      ),
                    ),
                    title: const Text(
                      "Credit/ Debit/ ATM Card",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),

                    trailing: Image.asset("assets/credit.png"),
                  ),
                  ListTile(
                    //   horizontalTitleGap: 10,
                    minLeadingWidth: 10,
                    minVerticalPadding: 20,
                    // contentPadding: const EdgeInsets.only(top: 10, bottom: 20),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.ktextColor)),
                      ),
                    ),
                    title: const Text(
                      "Cash On Delivery",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),

                    trailing: Image.asset("assets/cod.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Row(
                children: [
                  const Icon(Icons.add),
                  kbox30(),
                  const Text(
                    "Gift Card",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            kbox30(),
            Container(
              height: 3,
              width: Get.width,
              color: const Color.fromARGB(255, 246, 218, 243),
            ),
            kbox30(),
            Center(
              child: InkWell(onTap: () {
                Get.to(SuccessPayment());
              },
                child: Container(
                  height: 45.h,
                  width: Get.width - 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.buttoncolor),
                  child: const Center(
                      child: Text(
                    "Proceed To Pay",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
