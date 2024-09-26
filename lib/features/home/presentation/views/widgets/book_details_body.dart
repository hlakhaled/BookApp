import 'package:books_app/features/home/presentation/views/widgets/books_details_section.dart';

import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:books_app/features/home/presentation/views/widgets/similar_books_details_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(top: 30.h, left: 30, right: 30),
              child: Column(
                children: [
                  const CustomAppBarBookDetails(),
                  SizedBox(
                    height: 25.h,
                  ),
                  const BooksDetailsSection(),
                  SizedBox(
                    height: 31.h,
                  ),
                  const SimilarBooksDetailsListView(),
                ],
              ),
            ))
      ],
    );
  }
}
