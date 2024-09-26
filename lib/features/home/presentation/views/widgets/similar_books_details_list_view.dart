import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksDetailsListView extends StatelessWidget {
  const SimilarBooksDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "You can also like",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        const BookDetailsListView()
      ],
    );
  }
}
