import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repo/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  HomeRepoImpl home;
  FeaturedBooksCubit(this.home) : super(FeaturedBooksInitial());
  void featuredBooks() async {
    emit(FeaturedBooksInitial());
    var data = await home.fetchFeaturedBooks();
    data.fold((failure) => emit(FeaturedBooksFailure(failure.errorMsg)),
        (books) => emit(FeaturedBooksLoaded(books)));
  }
}
