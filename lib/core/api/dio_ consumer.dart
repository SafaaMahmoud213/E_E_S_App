import 'package:dio/dio.dart';
import 'package:my_app/core/api/api_consumer.dart';
import 'package:my_app/core/errors/server_exception.dart';

class Dioconsumer extends ApiConsumer {
  final Dio dio;
  Dioconsumer({required this.dio}) {
    dio.options.baseUrl = "pppppppppp";
  }

  @override
  Future<dynamic> delete(String path, {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.delete(path, data: data, queryParameters: queryParameter);

      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }

  @override
  Future<dynamic> get(String path, {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.get(path, data: data, queryParameters: queryParameter);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }

  @override
  Future<dynamic> patch(String path, {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.patch(path, data: data, queryParameters: queryParameter);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }

  @override
  Future<dynamic> post(String path, {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.post(path, data: data, queryParameters: queryParameter);
      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }
}
