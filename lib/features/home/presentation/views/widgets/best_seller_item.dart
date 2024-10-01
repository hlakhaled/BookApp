import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';

import 'package:books_app/features/home/presentation/views/widgets/rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: CachedNetworkImage(
                imageUrl: "${book.volumeInfo!.imageLinks!.thumbnail}",
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
                  "${book.volumeInfo!.title}",
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
                book.volumeInfo!.authors![0],
                style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w500,
                    color: whiteColor.withOpacity(0.70)),
              ),
              SizedBox(
                height: 3.h,
              ),
              Rating(book: book,)
            ],
          )
        ],
      ),
    );
  }
}
