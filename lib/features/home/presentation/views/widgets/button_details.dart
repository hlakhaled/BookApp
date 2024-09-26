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

        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: whiteColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ))),
          onPressed: () {},

          // Background color for the first text
          child: Padding(
            padding: EdgeInsets.only(
                left: 10.w, right: 18.w, top: 19.h, bottom: 8.h),
            child: Text(
              "19.99€",
              style: Styles.textStyle15.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),

        // Second Text with yellow background

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffEF8262),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ))),
          child: Padding(
            padding:
                EdgeInsets.only(left: 1.w, right: 1.w, top: 17.h, bottom: 8.h),
            child: Text(
              "Free preview",
              style: Styles.textStyle16.copyWith(
                  color: whiteColor,
                  fontFamily: kGilroyBold,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
