import 'package:books_app/features/home/presentation/manger/newest_seller_cubit/newest_seller_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestSellerBooksCubit, NewestSellerBooksState>(
      builder: (context, state) {
        if (state is NewestSellerBooksFailure) {
          return Center(child: Text(state.error));
        } else if (state is NewestSellerBooksLoaded) {
          return ListView.builder(
              itemCount: state.data.length,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: BestSellerItem(
                    book: state.data[index],
                  )));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
