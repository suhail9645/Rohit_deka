import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/chicken/chicken_product.dart';
import 'package:rohit_multivender/views/searchProducts/onion_search.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      showRating ? _showRatting() : const Text("");
    });

    super.initState();
  }

  bool temp = false;
  final List<String> imageUrls = [
    'assets/banner.png',
    'assets/baner2.png',
    'assets/banwer3.png',
    'assets/baner4.png',
    'assets/baner5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.kboadercolor)),
                  child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          temp = false;
                        });
                      },
                      style: const TextStyle(color: AppColors.ktextColor),
                      onTap: () {
                        // _showMyDialog();
                        setState(() {
                          temp = true;
                        });
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: "Search By products or Restuarant",
                          suffixIcon: Icon(
                            Icons.mic,
                            color: AppColors.ktextColor,
                            size: 30,
                          ),
                          hintStyle: TextStyle(fontSize: 15),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: AppColors.ktextColor,
                          ),
                          border: InputBorder.none)),
                ),
                temp ? searc() : Text(""),
                kbox10(),
                const Text(
                  "Order Again",
                  style: TextStyle(
                      color: AppColors.ktextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                kbox10(),
                Container(
                  height: 80.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: orderagain.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black45)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 70.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      orderagain[index],
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dairy Milk",
                                    style: TextStyle(
                                        color: AppColors.ktextColor,
                                        fontSize: 12),
                                  ),
                                  kbox10(),
                                  const Text(
                                    "29 min",
                                    style: TextStyle(
                                        color: AppColors.ktextColor,
                                        fontSize: 12),
                                  ),
                                  kbox10(),
                                  const Text(
                                    "sector 63, Noida ",
                                    style: TextStyle(
                                        color: AppColors.ktextColor,
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                kbox10(),
                Container(
                    height: 150,
                    child:
                        ImageSliderWithIndicatorOutside(imageUrls: imageUrls)),
                kbox20(),
                const Text(
                  "Shop by category",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    childAspectRatio: 2 / 3.2,
                  ),
                  itemCount: shopbycategory.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(const ChickenProductView());
                      },
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(shopbycategory[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            //  Image.asset(shopbycategory[index]),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const Text(
                  "New in Our Store",
                  style: TextStyle(
                      fontSize: 24,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: shopbycategory.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(shopbycategory[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                kbox20(),
                const Text(
                  "Lowest Prices",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: shopbycategory.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(shopbycategory[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                kbox20(),
                const Text(
                  "Brand Spotlight",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: brand.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(brand[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                kbox20(),
                const Text(
                  "Baking made it easy",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: brand.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(brand[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                kbox20(),
                const Text(
                  "Weekend Special",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: brand.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                           Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(brand[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                kbox20(),
                const Text(
                  "Quick & Easy Meal Solutions",
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w500),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: brand.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                          Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(brand[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                kbox50(),
                const Text(
                  "From Assam with Love",
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w300),
                ),
                kbox20(),
                const Text(
                  "Enjoy the authentic Products and Declicacies entirely harvested and Made in Assam.",
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w300),
                ),
                kbox20(),
                Container(
                  height: 120.h,
                  child: ListView.separated(
                    itemCount: brand.length,
                    separatorBuilder: (context, index) => kboxw10(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const ChickenProductView());
                        },
                        child: Column(
                          children: [
                           Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,
                                    color: Color(0xff97CADB)),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage(brand[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            kbox10(),
                            Text(
                              shopbycategorytext[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  searc() {
    return Column(
      children: <Widget>[
        kbox10(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recently Searched",
              style: TextStyle(fontSize: 12, color: AppColors.buttoncolor),
            ),
            Text(
              "CLEAR ALL",
              style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  color: AppColors.buttoncolor,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        kbox10(),
        InkWell(
          onTap: () {
            setState(() {
              temp = false;
            });
            Get.to(OnionSearchView());
          },
          child: Row(
            children: [
              const Icon(
                Icons.watch_later_outlined,
                color: Colors.blueAccent,
              ),
              kboxw30(),
              Image.asset("assets/onion.png"),
              kboxw30(),
              const Text(
                "Onion",
                style: TextStyle(
                    fontSize: 17,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        kbox10(),
        Row(
          children: [
            const Icon(
              Icons.watch_later_outlined,
              color: Colors.blueAccent,
            ),
            kboxw30(),
            Image.asset("assets/pizza.png"),
            kboxw30(),
            const Text(
              "Pizza",
              style: TextStyle(
                  fontSize: 17,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        kbox10(),
        Row(
          children: [
            const Icon(
              Icons.watch_later_outlined,
              color: Colors.blueAccent,
            ),
            kboxw30(),
            Image.asset("assets/cocolate.png"),
            kboxw30(),
            const Text(
              "Chocolates",
              style: TextStyle(
                  fontSize: 17,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  //height: 40.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.kboadercolor)),
                  child: TextFormField(
                      onTap: () {},
                      decoration: InputDecoration(
                          hintText: "Search By products or Restuarant",
                          suffixIcon: Image.asset("assets/mike.png"),
                          hintStyle: const TextStyle(fontSize: 15),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: AppColors.ktextColor,
                          ),
                          border: InputBorder.none)),
                ),
                kbox10(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently Searched",
                      style:
                          TextStyle(fontSize: 12, color: AppColors.buttoncolor),
                    ),
                    Text(
                      "CLEAR ALL",
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          color: AppColors.buttoncolor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                kbox10(),
                InkWell(
                  onTap: () {
                    Get.to(OnionSearchView());
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.watch_later_outlined,
                        color: Colors.blueAccent,
                      ),
                      kboxw30(),
                      Image.asset("assets/onion.png"),
                      kboxw30(),
                      const Text(
                        "Onion",
                        style: TextStyle(
                            fontSize: 17,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                kbox10(),
                Row(
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.blueAccent,
                    ),
                    kboxw30(),
                    Image.asset("assets/pizza.png"),
                    kboxw30(),
                    const Text(
                      "Pizza",
                      style: TextStyle(
                          fontSize: 17,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                kbox10(),
                Row(
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.blueAccent,
                    ),
                    kboxw30(),
                    Image.asset("assets/cocolate.png"),
                    kboxw30(),
                    const Text(
                      "Chocolates",
                      style: TextStyle(
                          fontSize: 17,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showRatting() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Your Recent Order",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.ktextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        showRating = false;
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
                const Text(
                  "Delivered In 8 minute",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff018201),
                      fontWeight: FontWeight.w500),
                ),
                kbox10(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/ata2.png"),
                    kboxw20(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nouriosh Atta ",
                          style: TextStyle(
                              fontSize: 13,
                              color: AppColors.ktextColor,
                              fontWeight: FontWeight.w500),
                        ),
                        kbox5(),
                        const Text(
                          "50kg   Qty. - 1",
                          style: TextStyle(
                              fontSize: 13,
                              color: AppColors.ktextColor,
                              fontWeight: FontWeight.w400),
                        ),
                        kbox5(),
                        Row(
                          children: [
                            const Text(
                              "₹ 270   ",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: AppColors.ktextColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              "₹ 370    ",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 13,
                                  color: AppColors.ktextColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff018ABE),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  "13 % off",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                kbox30(),
                const Center(
                  child: Text(
                    "Rate your Product & Experience!!",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.ktextColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                kbox30(),
                Center(
                  child: RatingBar.builder(
                    glowRadius: 15,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xff018ABE),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                kbox10(),
                const Center(
                  child: Text(
                    "Delivered To: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                    style: TextStyle(
                        fontSize: 13,
                        color: AppColors.ktextColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                kbox20(),
                const Text(
                  "Any Feedbacks?",
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600),
                ),
                kbox10(),
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
                          maxLines: 2,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        )
                      ],
                    ),
                  ),
                ),
                kbox10(),
                InkWell(
                  onTap: () {
                    showRating = false;
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

  List shopbycategory = [
    "assets/chiken1.png",
    "assets/fish.png",
    "assets/gresory.png",
    "assets/vegatable.png",
    "assets/bakery.png",
    "assets/diary.png",
    "assets/fruits.png",
    "assets/tea.png",
    "assets/sques.png",
    "assets/dry.png",
    "assets/sweet.png",
    "assets/maggi.png",
  ];
  List shopbycategorytext = [
    "Chicken",
    "Fish",
    "Grocery",
    "Vegetable",
    "Bakery",
    "Diary\nProducts",
    "Fruits",
    "Tea &\nCoffee",
    "Sauce &Spreadg",
    "Dry fruit\n& masala",
    "Sweet tooth",
    "Instant &\nfrozen food",
  ];

  List brand = [
    "assets/b1.png",
    "assets/b2.png",
    "assets/b3.png",
    "assets/b4.png",
    "assets/b1.png",
    "assets/b2.png",
    "assets/b3.png",
    "assets/b4.png"
  ];

  List orderagain = ['assets/dairymilk.png', 'assets/chiken.png'];
}

class ImageSliderWithIndicatorOutside extends StatefulWidget {
  final List<String> imageUrls;
  final Duration autoPlayInterval;

  ImageSliderWithIndicatorOutside({
    required this.imageUrls,
    this.autoPlayInterval = const Duration(seconds: 3),
  });

  @override
  _ImageSliderWithIndicatorOutsideState createState() =>
      _ImageSliderWithIndicatorOutsideState();
}

class _ImageSliderWithIndicatorOutsideState
    extends State<ImageSliderWithIndicatorOutside> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start auto-scrolling on widget creation
    _startAutoPlay();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // Cancel the timer when disposing the widget
    _stopAutoPlay();
    super.dispose();
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(widget.autoPlayInterval, (_) {
      if (_currentPage < widget.imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  void _stopAutoPlay() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        SizedBox(height: 10),
        buildIndicator(),
      ],
    );
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.imageUrls.map((url) {
        int index = widget.imageUrls.indexOf(url);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }).toList(),
    );
  }

  void _showPopupMenu(BuildContext context) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        overlay.localToGlobal(Offset.zero),
        overlay.localToGlobal(overlay.size.bottomRight(Offset.zero)),
      ),
      Offset.zero & overlay.size,
    );

    final List<String> menuItems = [
      'Option 1',
      'Option 2',
      'Option 3',
    ];

    showMenu(
      context: context,
      position: position,
      items: menuItems.map((item) {
        return PopupMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    ).then((value) {
      if (value != null) {
        // Handle the selected value from the popup menu here
        print('Selected: $value');
      }
    });
  }
}
