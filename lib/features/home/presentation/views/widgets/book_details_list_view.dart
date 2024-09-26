import 'package:books_app/features/home/presentation/views/widgets/book_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 112.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(end: 10.w),
              child: const BookDetailsItem(),
            );
          },
          itemCount: 5,
        ));
  }
}
