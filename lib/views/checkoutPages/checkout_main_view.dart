import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/views/address/add_address.dart';
import 'package:rohit_multivender/views/checkoutPages/payment_option.dart';
import 'package:unicons/unicons.dart';

import '../../utills/constant_box.dart';

class CheckOutMainView extends StatelessWidget {
  const CheckOutMainView({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size.height;
     var wsize =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffEAEAEA),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.ktextColor,
            )),
        backgroundColor: const Color(0xffEAEAEA),
        title: const Text(
          "Checkout",
          style: TextStyle(color: AppColors.ktextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.history, color: const Color(0xff018201)),
                          const Text(
                            "Delivery In 8 minute",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff018201)),
                          ),
                          kboxw50(),
                          Container(
                            height: 25.h,
                            width: 80.w,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/ondele.png"),
                          kboxw10(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Onions",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.ktextColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              kbox10(),
                              const Text(
                                "50kg",
                                style: TextStyle(
                                    color: AppColors.ktextColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              kbox10(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "₹ 270",
                                    style: TextStyle(
                                        color: AppColors.ktextColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  kboxw10(),
                                  const Text(
                                    "₹ 370",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: AppColors.ktextColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                   SizedBox(width: wsize*0.1),
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
                              ),
                            ],
                          )
                        ],
                      ),
                      kbox10(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.check_box_outline_blank),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Go Green  ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900),
                                  ),
                                   Text(
                                    "and opt for a paperbag instead”",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.ktextColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Text(
                                "NOTE :  *Additional 10₹ will be added during ",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.ktextColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              kbox20(),
              Container(
                //height: 150.h,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Before You Checkout",
                          style: TextStyle(
                              color: AppColors.ktextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        kbox20(),
                        Container(
                          height: size*0.3,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => kboxw10(),
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return kconr();
                            },
                          ),
                        ),
                      ],
                    )),
              ),
              kbox10(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/promo.png"),
                     
                      const Text(
                        "Use Promo Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.ktextColor),
                      ),
                      kboxw50(),
                      kboxw50(),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColors.ktextColor,
                      )
                    ],
                  ),
                ),
              ),
              kbox10(),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Add  Instructions",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.ktextColor),
                      ),
                      kbox10(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.kboadercolor)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Write A comments",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.ktextColor),
                              ),
                              Container(
                                height: 35,
                                child: TextFormField(
                                    style: const TextStyle(
                                        color: AppColors.ktextColor),
                                    decoration: const InputDecoration(
                                        border: InputBorder.none)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              kbox10(),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cancellation Policy",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: AppColors.ktextColor),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.ktextColor),
                      ),
                    ],
                  ),
                ),
              ),
              kbox10(),
              const Text(
                "Price Detail",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.ktextColor),
              ),
              kbox10(),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "(two items)",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: AppColors.ktextColor),
                        ),
                        kbox10(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                            Text(
                              "₹674.00",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                          ],
                        ),
                        kbox10(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shipping",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                            Text(
                              "₹40",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                          ],
                        ),
                        kbox10(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tax",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                            Text(
                              "₹10",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              kbox10(),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kbox10(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                            Text(
                              "₹724.00",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.ktextColor),
                            ),
                          ],
                        ),
                        kbox10(),
                      ]),
                ),
              ),
              kbox10(),
              mainpayment
                  ? InkWell(
                      onTap: () {
                        Get.to(PaymentOptionView());
                      },
                      child: Container(
                        height: 45.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.buttoncolor),
                        child: const Center(
                            child: Text(
                          "Add Payment Process",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        showModalBottomSheet(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Select A Location",
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
                                  kbox10(),
                                  InkWell(
                                    onTap: () {
                                      Get.to(AddAddressView());
                                    },
                                    child: const Text(
                                      "+ Add Address",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blueAccent),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 50.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.buttoncolor),
                        child: const Center(
                            child: Text(
                          "Choose address at next step",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
              kbox50()
            ],
          ),
        ),
      ),
    );
  }

  kconr() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kboadercolor),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: AppColors.buttoncolor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "12 % off",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              kboxw50()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //height: 60,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(),
                child: Image.asset("assets/ashirvad.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abhivadan Atta",
                    style: TextStyle(
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "1 Bag (40kg-60kg)",
                    style: TextStyle(
                      color: AppColors.ktextColor,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "\u{20B9} 225",
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.ktextColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.buttoncolor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
