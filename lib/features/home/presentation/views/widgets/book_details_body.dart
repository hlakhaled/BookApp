import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/styles.dart';

import 'package:books_app/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:books_app/features/home/presentation/views/widgets/button_details.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:books_app/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(top: 40.h, left: 30.w, right: 30.w),
          child: const CustomAppBarBookDetails(),
        )),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 33.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 107.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.network(
                "https://th.bing.com/th/id/OIP.FweYc1n9zcA08ZY_gWor8AHaLH?rs=1&pid=ImgDetMain",
                height: 243.h,
                width: 162.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 45.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 75.w),
            child: Text(
              "The Jungle Book",
              style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 124.w),
            child: Text(
              "Rudyard Kipl",
              style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  color: whiteColor.withOpacity(0.70)),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 17.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: const Rating(
              isDetails: true,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 37.h,
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: const ButtonDetails(),
        )),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 51.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Text(
                "You can also like",
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        const SliverToBoxAdapter(child: BookDetailsListView()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40.h,
          ),
        )
      ],
    );
  }
}
