import 'package:dio/dio.dart';
import 'package:my_app/core/api/api_consumer.dart';
import 'package:my_app/core/api/api_interceptors.dart';
import 'package:my_app/core/errors/server_exception.dart';

class Dioconsumer extends ApiConsumer {
  final Dio dio;
  Dioconsumer({required this.dio}) {
    dio.options.baseUrl = "EndPoint.baseUrl";
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        requestBody: true,
        error: true,
      ),
    );
  }

  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameter,
    isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );

      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  }) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameter,
    isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,

        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    isFormData = false,
    Map<String, dynamic>? queryParameter,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioExceptio(e);
    }
  }
}
