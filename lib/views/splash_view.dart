import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/views/introScreens/intro_screen_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.to(IntroScreenView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD6E8EE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 180,
                child: Image.asset(
                  "assets/logo+glow.png",
                  fit: BoxFit.cover,
                )),
            // Positioned(
            //   bottom: -40,
            //   child: Container(
            //     width: Get.width,
            //     child: Image.asset("assets/gosco_logo2.png"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
