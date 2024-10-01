import 'package:books_app/core/error/failure.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  HomeRepoImpl(this.api);
  ApiService api;
  Future<Either<Failure, List<BookModel>>> fetchNewestSellerBooks() async {
    try {
      var data = await api.getMethod(
          'volumes?Filtering=free-ebooks&q=programming&sorting=newest');
      List<BookModel> responseData = [];
      for (var item in data["items"]) {
        responseData.add(BookModel.fromJson(item));
      }
      return right(responseData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromSioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data =
          await api.getMethod("volumes?Filtering=free-ebooks&q=programming");

      List<BookModel> responseData = [];
      for (var item in data["items"]) {
        responseData.add(BookModel.fromJson(item));
      }
      return right(responseData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromSioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
