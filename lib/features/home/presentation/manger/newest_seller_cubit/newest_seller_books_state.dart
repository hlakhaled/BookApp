part of 'newest_seller_books_cubit.dart';

sealed class NewestSellerBooksState extends Equatable {
  const NewestSellerBooksState();

  @override
  List<Object> get props => [];
}

final class NewestSellerBooksInitial extends NewestSellerBooksState {}

final class NewestSellerBooksFailure extends NewestSellerBooksState {
  String error;
  NewestSellerBooksFailure(this.error);
}

final class NewestSellerBooksLoading extends NewestSellerBooksState {}

final class NewestSellerBooksLoaded extends NewestSellerBooksState {
  List<BookModel> data;
  NewestSellerBooksLoaded(this.data);
}
