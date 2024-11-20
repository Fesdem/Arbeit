import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle splashTextStyle = TextStyle(
    fontSize: 30.sp,
    color: AppColors.tertiary,
    fontWeight: FontWeight.w800,
  );
  static TextStyle subtitleTextStyle = TextStyle(
    fontSize: 10.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );
  static TextStyle elevatedTextStyle = TextStyle(
    fontSize: 11.sp,
    color: AppColors.backgroundColor,
    fontWeight: FontWeight.w700,
  );
   static TextStyle secElevatedTextStyle = TextStyle(
    fontSize: 11.sp,
    color: AppColors.tertiary,
    fontWeight: FontWeight.w700,
  );
  static TextStyle subtitle2 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle subtitle3 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle subtitle4 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle subtitle5 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
}
