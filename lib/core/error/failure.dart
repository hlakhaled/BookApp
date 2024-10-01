import 'package:dio/dio.dart';

abstract class Failure {
  String errorMsg;
  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromSioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout With Api Service");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout With Api Service");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout With Api Service");
      case DioExceptionType.badCertificate:
        return ServerFailure("bad Certificate With Api Service");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            error.response!.statusCode!, error.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure("Request to Api Service was cancel");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error With Api Service");
      case DioExceptionType.unknown:
        if (error.message!.contains("socketexception")) {
          return ServerFailure("No Internet Connection, Please try again");
        }
        return ServerFailure("An Unexpected Error , please try again");
      default:
        return ServerFailure("There was an error , please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Method Not Found, please try again");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, please try again");
    } else {
      return ServerFailure("There was an error , please try again");
    }
  }
}
