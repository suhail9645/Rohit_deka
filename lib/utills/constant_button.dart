
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rohit_multivender/utills/app_colors.dart';

kbutton(text, ontap) {
  return InkWell(onTap: (){
    ontap;
  },
    child: Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.buttoncolor),
      child: MaterialButton(
        onPressed: ontap,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
        )),
      ),
    ),
  );
}
