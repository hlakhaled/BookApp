import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 48.h,
              left: 30.w,
            ),
            child: const CustomAppBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 57.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: const CustomBooksList(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 68.h,
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Text("Best Seller", style: Styles.textStyle18),
        )),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20.h,
          ),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: const BestSellerListView(),
        )),
      ],
    );
  }
}
