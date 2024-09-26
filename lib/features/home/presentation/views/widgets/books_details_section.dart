
import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/button_details.dart';
import 'package:books_app/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.network(
            "https://th.bing.com/th/id/OIP.FweYc1n9zcA08ZY_gWor8AHaLH?rs=1&pid=ImgDetMain",
            height: 243.h,
            width: 162.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Rudyard Kipl",
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500, color: whiteColor.withOpacity(0.70)),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: const Rating(
            isDetails: true,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: const ButtonDetails(),
        ),
      ],
    );
  }
}
