import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/bottomNavigation/bottom_bar_view.dart';
import 'package:rohit_multivender/views/bottomNavigation/my_cart_view.dart';
import 'package:rohit_multivender/views/cms/faq_view.dart';
import 'package:rohit_multivender/views/cms/help_support_view.dart';
import 'package:rohit_multivender/views/cms/term_view.dart';
import 'package:rohit_multivender/views/oders/oader_history.dart';
import 'package:rohit_multivender/views/oders/track_oader.dart';
import 'package:rohit_multivender/views/subscription_view.dart';
import 'package:rohit_multivender/views/wallet/wallet_view.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
        // borderRadius: BorderRadius.only(20),
          gradient: LinearGradient(
            colors: [
              Color(0xFFC2EBFB),
              Color(0xFFC2EBFB),
              Color(0xFFC2EBFB),
            ],
            stops: [1.0, 0.53, 0.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kbox10(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            "assets/user.png"), // Replace USER_PHOTO_URL with the URL of the user's photo
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Jameson Dunn', // Replace USER_NAME with the user's name
                        style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '+91123456789', // Replace USER_MOBILE_NUMBER with the user's mobile number
                        style: TextStyle(
                          color: AppColors.ktextColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset("assets/icon.png")),
                  ),
                ],
              ),
              kbox40(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70.h,
                    width: MediaQuery.of(context).size.width*0.65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff02457A)),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const WalleteView());
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.wallet,
                                  color: Colors.white,
                                ),
                                Text("Wallet")
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const OaderHistoryView());
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.history,
                                  color: Colors.white,
                                ),
                                Text("Order History")
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNavigationBarView(
                                          select: 1,
                                        )),
                              );
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.card_travel_sharp,
                                  color: Colors.white,
                                ),
                                Text("My cart")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: Column(
                  children: [
                    kro("Group 9626", "Edit Profile", () {}),
                    kbox10(),
                    kro("Group 9631", "Track order", () {
                      Get.to(const TrackOaderView());
                    }),
                    kbox10(),
                    kro("Group 9804", "Your Printing Store", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationBarView(
                                  select: 3,
                                )),
                      );
                    }),
                    kbox10(),
                    kro("Group 9633", "Help & Support", () {
                      Get.to(const HelpAndSuportView());
                    }),
                    kbox10(),
                    kro("Group 9634", "Terms & Conditions", () {
                      Get.to(const TermAndConditionView());
                    }),
                    kbox10(),
                    kro("Group 9636", "FAQ’S", () {
                      Get.to(const FaqView());
                    }),
                    kbox10(),
                    kro("Group 9805", "About us", () {
                      Get.to(const FaqView());
                    }),
                    kbox10(),
                    kro("Group 9806", "Privacy & Policy", () {
                      Get.to(const TermAndConditionView());
                    }),
                    kbox10(),
                    kro("Group 9803", "Subscription", () {
                      Get.to(const SubscriptionView());
                    }),
                    kbox10(),
                  ],
                ),
              ),
              // kbox20(),
              // Center(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       InkWell(onTap: () {
              //         Get.to(SubscriptionView());
              //       },
              //         child: const Text(
              //             'subscription', // Replace USER_MOBILE_NUMBER with the user's mobile number
              //             style: TextStyle(
              //               color: AppColors.ktextColor,
              //               fontSize: 20,
              //             )),
              //       ),
              //       kbox10(),
              //       InkWell(onTap: () {
              //         Get.to(TermAndConditionView());
              //       },
              //         child: const Text(
              //             'Privacy & Policy', // Replace USER_MOBILE_NUMBER with the user's mobile number
              //             style: TextStyle(
              //               color: AppColors.ktextColor,
              //               fontSize: 20,
              //             )),
              //       ),
              //     ],
              //   ),
              // ),
              // kbox20(),
              // InkWell(onTap: () {
              //   Get.to(FaqView());
              // },
              //   child: const Text(
              //       'About us', // Replace USER_MOBILE_NUMBER with the user's mobile number
              //       style: TextStyle(
              //           color: AppColors.ktextColor,
              //           fontSize: 20,
              //           fontWeight: FontWeight.w300)),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  kro(icon, text, ontap) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              //width: 200.w,
              child: Row(
                children: [
                  Image.asset("assets/$icon.png"),
                  kboxw20(),
                  Text(
                    text,
                    style: const TextStyle(color: AppColors.ktextColor),
                  )
                ],
              )),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.ktextColor,
            size: 20,
          )
        ],
      ),
    );
  }
}
