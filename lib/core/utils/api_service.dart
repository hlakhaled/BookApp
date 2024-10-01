import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  Dio dio;
  final String baseUrl = "https://www.googleapis.com/books/v1/";
  Future<Map<String, dynamic>> getMethod(String endpoint) async {
    Response response = await Dio().get("$baseUrl$endpoint");
    return response.data;
  }
}
