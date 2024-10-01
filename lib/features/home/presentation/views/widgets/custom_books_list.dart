import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksList extends StatelessWidget {
  const CustomBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 224.h,
        child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
          builder: (context, state) {
            if (state is FeaturedBooksFailure) {
              return Text(state.errorMsg);
            } else if (state is FeaturedBooksLoaded) {
              return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsetsDirectional.only(end: 14.w),
                        child: CustomBooksItems(
                          feauteredBook: state.data[index],
                        ),
                      ),
                  itemCount: state.data.length);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
