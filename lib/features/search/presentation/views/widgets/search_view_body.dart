import 'package:books_app/core/utils/styles.dart';

import 'package:books_app/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:books_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchTextField(),
            SizedBox(
              height: 20.h,
            ),
            Text("Search Result", style: Styles.textStyle18),
            SizedBox(
              height: 20.h,
            ),
            const SearchListView(),
          ],
        ));
  }
}
