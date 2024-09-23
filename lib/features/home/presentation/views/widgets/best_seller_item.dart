
import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.network(
              "https://th.bing.com/th/id/OIP.FweYc1n9zcA08ZY_gWor8AHaLH?rs=1&pid=ImgDetMain",
              height: 114.h,
              width: 71.w,
              fit: BoxFit.cover),
        ),
        SizedBox(
          width: 30.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                "Harry Potter and the Goblet of Fire",
                style: Styles.textStyle20.copyWith(
                    fontFamily: kGTSectraFine, fontWeight: FontWeight.normal),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "J.K. Rowling",
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w500,
                  color: whiteColor.withOpacity(0.70)),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "19.99",
                  style: Styles.textStyle20,
                ),
                Text(" €", style: Styles.textStyle15),
                SizedBox(
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
                  style: Styles.textStyle14
                      .copyWith(color: whiteColor.withOpacity(0.50)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
