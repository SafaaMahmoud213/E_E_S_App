import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] = "";
    options.headers['Accept-Lannguage'] = "ar";
    super.onRequest(options, handler);
  }
}
