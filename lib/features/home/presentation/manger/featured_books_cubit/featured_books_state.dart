part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoaded extends FeaturedBooksState {
  List<BookModel> data;
  FeaturedBooksLoaded(this.data);
}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  String errorMsg;
  FeaturedBooksFailure(this.errorMsg);
}
