import 'package:books_app/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle textStyle18 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp);
  static TextStyle textStyle14 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp);
  static TextStyle textStyle20 =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold); //notcie
  static TextStyle textStyle16 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle textStyle30 = TextStyle(
      fontSize: 30.sp, fontWeight: FontWeight.w400, fontFamily: kGTSectraFine);
  static TextStyle textStyle15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );
}
