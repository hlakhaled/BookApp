import 'package:bloc/bloc.dart';

import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repo/home_repo_impl.dart';

import 'package:equatable/equatable.dart';

part 'newest_seller_books_state.dart';

class NewestSellerBooksCubit extends Cubit<NewestSellerBooksState> {
  HomeRepoImpl home;

  NewestSellerBooksCubit(this.home) : super(NewestSellerBooksInitial());
  void newestBloc() async {
    emit(NewestSellerBooksLoading());

    var data = await home.fetchNewestSellerBooks();
    data.fold((failure) => emit(NewestSellerBooksFailure(failure.errorMsg)),
        (books) => emit(NewestSellerBooksLoaded(books)));
  }
}
