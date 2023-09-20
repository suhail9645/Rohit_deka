import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/Grocery/grocery_description.dart';
import 'package:rohit_multivender/views/chicken/chicken_product.dart';
import 'package:rohit_multivender/views/vegetabels_fruits/vegitable_category.dart';

class ReliencePageView extends StatelessWidget {
   ReliencePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kbox30(),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDVK02bP9VvnTXSBIWNOL8yUhNDkirTvcDSfS2MtPxSw&s"),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to( ReliencePageView());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Reliance Fresh",
                              style: TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 3),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  )),
                                  TextSpan(
                                      text: " 4.8",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))
                                ]),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "67 Products Found",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decorationColor: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 35,
                      ))
                ],
              ),
            ),
            kbox30(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About us",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  kbox10(),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget mollis velit. Praesent pharetra, ipsum eget vestibulum eleifend, est sapien mollis erat, faucibus ",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  kbox10(),
                   Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.black38,
                      ),
                      kboxw10(),
                      const Text(
                        "Vendor Since ",
                        style: TextStyle(
                            color: AppColors.ktextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        " April 2023",
                        style: TextStyle(
                            color: AppColors.buttoncolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  kbox20(),
                  const Text(
                        "New in Our Store ",
                        style: TextStyle(
                            color: AppColors.ktextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      kbox10(),
                      Container(
                    height: 90.h,
                    child: ListView.separated(
                      itemCount: shopbycategory.length,
                      separatorBuilder: (context, index) => kboxw10(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(onTap: () {
                          Get.to(ChickenProductView());
                        },
                          child: Column(
                            children: [
                              Image.asset(shopbycategory[index]),
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
                   kbox10(),
                      Container(
                    height: 90.h,
                    child: ListView.separated(
                      itemCount: shopbycategory.length,
                      separatorBuilder: (context, index) => kboxw10(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(shopbycategory[index]),
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
                        );
                      },
                    ),
                  ),
                  kbox20(),
                  const Text(
                        "Lowest Prices ",
                        style: TextStyle(
                            color: AppColors.ktextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      kbox10(),
                      Container(
                    height: 90.h,
                    child: ListView.separated(
                      itemCount: shopbycategory.length,
                      separatorBuilder: (context, index) => kboxw10(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(shopbycategory[index]),
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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

}
