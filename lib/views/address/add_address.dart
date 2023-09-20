import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/checkoutPages/checkout_main_view.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.ktextColor,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          "Add Address",
          style: TextStyle(color: AppColors.ktextColor),
        ),
        actions: [],
      ),
      body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/address_map.png"))),
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
              bottom: 250,
              child: Container(
                height: 50.h,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.buttoncolor),
                child: const Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      "Use Current Location",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  height: 150.h,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/send.png"),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A Block",
                                  style: TextStyle(
                                      color: AppColors.ktextColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                ),
                                Text(
                                  "Sector 63,Noida",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 70, 66, 66),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                )
                              ],
                            ),
                            kboxw50(),
                            kboxw50(),
                            const Text(
                              "Change",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        kbox30(),
                        InkWell(
                          onTap: () {
                            addAddress(context);
                          },
                          child: Container(
                            height: 50.h,
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.buttoncolor),
                            child: const Center(
                                child: Text(
                              "Enter Complete Address",
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
                ))
          ])),
    );
  }

  addAddress(context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Enter Complete Address",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.ktextColor),
                  ),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.close,
                        color: AppColors.ktextColor,
                      ))
                ],
              ),
              const Divider(
                color: AppColors.ktextColor,
              ),
              kbox10(),
              const Text(
                "Save address as *",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent),
              ),
              kbox10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [kboxxx("Home"), kboxxx("Office"), kboxxx("Other")],
              ),
              kbox20(),
              ktextField("Flat, House no, Floor, Tower"),
              kbox10(),
              ktextField("Street, Society, Landmark"),
              kbox10(),
              ktextField("Recipient’s name"),
              kbox60(),
              InkWell(
                onTap: () {
                  Get.to(const CheckOutMainView());
                  mainpayment = true;
                },
                child: Container(
                  height: 50.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.buttoncolor),
                  child: const Center(
                      child: Text(
                    "Save Address",
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

  ktextField(text) {
    return Container(
      height: 40.h,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.kboadercolor)),
      child: TextFormField(
          style: const TextStyle(color: AppColors.ktextColor),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              hintText: text,
              hintStyle: const TextStyle(fontSize: 15),
              border: InputBorder.none)),
    );
  }

  kboxxx(text) {
    return Container(
      height: 30.h,
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff018ABE)),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(color: AppColors.ktextColor),
      )),
    );
  }
}
