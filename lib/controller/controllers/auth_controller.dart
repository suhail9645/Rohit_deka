import 'dart:async';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../model/auth/auth.dart';
import '../../views/auth/otp_verification_view.dart';
import '../../views/verify_view.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  AuthModel? authModel;
  String mobileNumber = '';
  final StreamController<bool> _pasteCode = StreamController<bool>.broadcast();
  Stream<bool> get pasteCode => _pasteCode.stream;
  Sink<bool> get pasteCodeSink => _pasteCode;
  void onGetOtp(String phoneNumber) async {
    if(phoneNumber==''){
       Get.showSnackbar(const GetSnackBar(
        message: 'Please enter the Phone Number',
        duration:  Duration(seconds: 2),
      ));
    }
    else if(phoneNumber.length!=10){
       Get.showSnackbar(const GetSnackBar(
        message: 'Phone Number Not Valid',
        duration:  Duration(seconds: 2),
      ));
    }
    else{
    Dio dio = Dio();
    try {
      mobileNumber = phoneNumber;
      isLoading(true);
      final response = await dio
          .post(baseUrl + otpGenerateUrl, data: {'mobileNumber': phoneNumber});
      authModel = AuthModel.fromJson(response.data);
      Get.to(const OTPVerificationView());
      isLoading(false);
      Get.showSnackbar(GetSnackBar(
        message: 'Your OTP is ${authModel?.user?.otp}',
        duration: const Duration(seconds: 4),
      ));
    } on DioException catch (e) {
      Get.showSnackbar(GetSnackBar(
        message: e.message,
        duration: const Duration(seconds: 2),
      ));
    }
  }
  }
  void onValidateOtp(
    String otp,
  ) async {
    Dio dio = Dio();
    isLoading(true);
    try {
      final response = await dio.post(baseUrl + otpVarificationUrl,
          data: {"mobileNumber": mobileNumber, "otp": otp});
      SharedPreferences shrd = await SharedPreferences.getInstance();
      String token = response.data['token'];
      shrd.setString('token', token);
      isLoading(false);
      Get.to(const VerifyView());
    } on DioException catch (e) {
      Get.showSnackbar(GetSnackBar(
        message: e.message,
        duration: const Duration(seconds: 2),
      ));
      isLoading(false);
    }
  }
}
