import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/views/auth/login_view.dart';


class IntroScreenView extends StatelessWidget {
  IntroScreenView({super.key});

  final List<Introduction> list = [
    Introduction(imageHeight: 200,
      subTitleTextStyle: const TextStyle(color: AppColors.ktextColor),
      titleTextStyle: const TextStyle(
          color: AppColors.ktextColor, fontSize: 20, fontWeight: FontWeight.w700),
      title: 'Even  to space with us ! \ntoghether',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/onboadr1.png',
    ),
    Introduction(imageHeight: 200,
      subTitleTextStyle: const TextStyle(color: AppColors.ktextColor),
      titleTextStyle: const TextStyle(
          color: AppColors.ktextColor, fontSize: 20, fontWeight: FontWeight.w700),
      title: 'Pickup Delivery At Your’s \nDoor',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/onboadr2.png',
    ),
    Introduction(imageHeight: 200,
      subTitleTextStyle: const TextStyle(color: AppColors.ktextColor),
      titleTextStyle: const TextStyle(
          color: AppColors.ktextColor, fontSize: 20, fontWeight: FontWeight.w700),
      title: 'Browse Your Menu and \nOrder Directly',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/onboadr3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    print(size);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: size*0.9,
            child: IntroScreenOnboarding(
              foregroundColor: AppColors.buttoncolor,
              skipTextStyle: const TextStyle(color: AppColors.ktextColor),
              backgroudColor: Colors.white,
              introductionList: list,
              onTapSkipButton: () {
               Get.to(const LoginView());
              },
            ),
          ),
        ],
      ),
    );
  }
}
