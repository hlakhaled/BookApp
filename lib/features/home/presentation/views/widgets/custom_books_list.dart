import 'package:books_app/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksList extends StatelessWidget {
  const CustomBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 224.h,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(end: 14.w),
                  child: const CustomBooksItems(),
                ),
            itemCount: 10));
  }
}
