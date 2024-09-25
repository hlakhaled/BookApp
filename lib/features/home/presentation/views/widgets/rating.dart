import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, this.isDetails = false});
  final bool isDetails;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isDetails == false
            ? Text(
                "19.99",
                style: Styles.textStyle20,
              )
            : isDetails == false
                ? Text(" €", style: Styles.textStyle15)
                : SizedBox(
                    width: 39.w,
                  ),
        const Icon(
          Icons.star,
          color: kStarColor,
          weight: 13,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          "(2390)",
          style:
              Styles.textStyle14.copyWith(color: whiteColor.withOpacity(0.50)),
        )
      ],
    );
  }
}
