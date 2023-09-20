import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/category_view.dart';

class MyStoreView extends StatefulWidget {
  MyStoreView({super.key});

  @override
  State<MyStoreView> createState() => _MyStoreViewState();
}

class _MyStoreViewState extends State<MyStoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: AppColors.kboadercolor)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                index == 0
                                    ? const Icon(
                                        Icons.sort,
                                        color: AppColors.ktextColor,
                                      )
                                    : const Text(""),
                                Text(
                                  textt[index],
                                  style: const TextStyle(
                                      color: AppColors.ktextColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => kboxw10(),
                    itemCount: textt.length),
              ),
              kbox30(),
              const Text(
                "Top Vendors",
                style: TextStyle(
                    color: AppColors.ktextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              kbox10(),
              InkWell(
                onTap: () {
                  _itemNotFound();
                },
                child: Row(
                  children: [
                    const Text(
                      "Item not found? ",
                      style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    kbox10(),
                    const Text(
                      "Report Here",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff018ABE),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              kbox30(),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    //crossAxisSpacing: 20,
                    //  childAspectRatio: 2 / 3,

                    mainAxisExtent: 240),
                itemCount: shopbycategory.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(CategoryView());
                    },
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(shopbycategory[index]),
                          kbox10(),
                          const Text(
                            "29 mins to Deliver",
                            style: TextStyle(
                                color: Color(
                                  0xff018201,
                                ),
                                fontSize: 8),
                          ),
                          kbox10(),
                          Text(
                            shopbycategorytext[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: AppColors.ktextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          kbox10(),
                          const Text(
                            "Selling 1 Bag (40kg-60kg )",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.ktextColor,
                                fontSize: 9,
                                fontWeight: FontWeight.w600),
                          ),
                          kbox10(),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Onions at",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.buttoncolor,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                " ₹225",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.ktextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List shopbycategory = [
    "assets/tv1.png",
    "assets/tv2.png",
    "assets/tv3.png",
    "assets/tv4.png",
    "assets/tv5.png",
    "assets/tv6.png",
    "assets/tv4.png",
    "assets/tv2.png",
    "assets/tv1.png",
  ];

  List shopbycategorytext = [
    "Sheetal Grocery Store.",
    "Big Bazaar",
    "Reliance Fresh",
    "Kirana Store",
    "24/7 Store",
    "Shukla Store",
    "Kalyan fruit seller",
    "Sheetal store",
    "Kirana store",
  ];

  Future<void> _itemNotFound() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Container(
            width: 400,
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Item Not Found??",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.ktextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.close,
                        color: AppColors.ktextColor,
                        size: 40,
                      ),
                    )
                  ],
                ),
                kbox20(),
                kbox20(),
                const Text(
                  "Any Feedbacks?",
                  style: TextStyle(
                      fontSize: 23,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600),
                ),
                kbox20(),
                Container(
                  //height: 100.h,
                  // width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffD9D9D9)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enter your feedback",
                          style: TextStyle(
                              color: AppColors.ktextColor, fontSize: 20),
                        ),
                        kbox10(),
                        TextFormField(
                          style: const TextStyle(color: AppColors.ktextColor),
                          maxLines: 3,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        )
                      ],
                    ),
                  ),
                ),
                kbox20(),
                const Text(
                  "Report Vendor",
                  style: TextStyle(
                      fontSize: 23,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600),
                ),
                kbox20(),
                Container(
                  //height: 100.h,
                  // width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffD9D9D9)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Type Vendor Name here......",
                          style: TextStyle(
                              color: AppColors.ktextColor, fontSize: 13),
                        ),
                        kbox10(),
                        TextFormField(
                          style: const TextStyle(color: AppColors.ktextColor),
                          maxLines: 1,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        )
                      ],
                    ),
                  ),
                ),
                kbox20(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Any further Queries?",
                      style:
                          TextStyle(color: AppColors.ktextColor, fontSize: 15),
                    ),
                    Text(
                      " Call us At",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 17),
                    ),
                  ],
                ),
                kbox20(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: AppColors.ktextColor,
                    ),
                    Text(
                      "+91 1234567890",
                      style:
                          TextStyle(color: AppColors.ktextColor, fontSize: 17),
                    ),
                  ],
                ),
                kbox20(),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff018201)),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "SUMBIT",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List textt = ["Sort", "Fast Delivery", "Great Offer", "Low To High"];
}
