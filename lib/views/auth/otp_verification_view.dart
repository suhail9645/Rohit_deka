import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:rohit_multivender/utills/constant_button.dart';
import 'package:rohit_multivender/views/verify_view.dart';

import '../../controller/controllers/auth_controller.dart';

class OTPVerificationView extends StatefulWidget {
  const OTPVerificationView({super.key});

  @override
  State<OTPVerificationView> createState() => _OTPVerificationViewState();
}

class _OTPVerificationViewState extends State<OTPVerificationView> {
  String _otp = '';
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
   

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kbox50(),
              kbox30(),
              Container(
                  height: 150, child: Image.asset("assets/logo+glow.png")),
              kbox20(),
              const Text(
                "Enter verification code",
                style: TextStyle(
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
              kbox20(),
              const Text(
                "Enter  4 digit code that send to",
                style: TextStyle(
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              const Text(
                "your mobile",
                style: TextStyle(
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              kbox40(),
              Center(
                child: VerificationCode(
                  pasteStream: authController.pasteCode,
                  fullBorder: true,
                  margin: const EdgeInsets.all(8),
                  fillColor: Colors.transparent,
                  digitsOnly: true,
                  itemSize: 50,
                  underlineWidth: 1,
                  underlineUnfocusedColor: AppColors.ktextColor,
                  textStyle: const TextStyle(
                      fontSize: 20.0, color: AppColors.ktextColor),
                  keyboardType: TextInputType.number,
                  underlineColor: Colors
                      .black, // If this is null it will use primaryColor: kmainColor from Theme
                  length: 4,
                  cursorColor: Colors
                      .black, // If this is null it will default to the ambient
                  // clearAll is NOTrequired, you can delete it
                  // takes any widget, so you can implement your design

                  onCompleted: (String value) {
                    setState(() {
                      _otp = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {});
                    // if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
              ),
              kbox60(),
              kbox50(),
              Obx(() => !authController.isLoading.value
                  ? kbutton("Continue", () {
                      authController.onValidateOtp(_otp);
                      //
                    })
                  : const CircularProgressIndicator())
            ],
          ),
        ),
      ),
    );
  }
}
