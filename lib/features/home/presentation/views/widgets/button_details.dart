
import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonDetails extends StatelessWidget {
  const ButtonDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First Text with white background
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )),
          // Background color for the first text
          child: Padding(
            padding: EdgeInsets.only(
                left: 45.w, right: 49.w, top: 19.h, bottom: 8.h),
            child: Text(
              "19.99€",
              style: Styles.textStyle15.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
    
        // Second Text with yellow background
        Container(
          decoration: const BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Padding(
            padding: EdgeInsets.only(
                left: 30.w, right: 27.w, top: 17.h, bottom: 8.h),
            child: Text(
              "Free preview",
              style: Styles.textStyle16.copyWith(
                  fontFamily: kGilroyBold, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
