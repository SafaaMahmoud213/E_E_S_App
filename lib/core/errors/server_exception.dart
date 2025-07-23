import 'package:dio/dio.dart';
import 'package:my_app/core/errors/error_model.dart';

class ServerEception implements Exception {
  final ErrorModel errorModel;

  ServerEception({required this.errorModel});
}

void handelDioExceptio(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400: //"Bad Request - Invalid data provided"
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
        case 401: // "Unauthorized "
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));

        case 403: // "Forbidden "
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
        case 404: // "Not Found "
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
        case 500: //  "Internal Server Error "
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
        case 502: //  "Bad Gateway -"
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
        case 503: //"Service Unavailable "
          throw ServerEception(errorModel: ErrorModel.fromjson(e.response!.data));
      }
  }
}
