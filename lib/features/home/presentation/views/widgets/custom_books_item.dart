import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksItems extends StatelessWidget {
  const CustomBooksItems({super.key, required this.feauteredBook});

  final BookModel feauteredBook;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        height: 224.h,
        width: 150.w,
        imageUrl: "${feauteredBook.volumeInfo!.imageLinks!.thumbnail}",
        placeholder: (context, string) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, string, obj) => const Center(
          child: Icon(Icons.error),
        ),
      ),
    );
  }
}
