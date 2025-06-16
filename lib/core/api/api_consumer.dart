abstract class ApiConsumer {
  get(String path, {Object? data, Map<String, dynamic>? queryParameter});
  post(String path, {Object? data, Map<String, dynamic>? queryParameter});
  delete(String path, {Object? data, Map<String, dynamic>? queryParameter});
  patch(String path, {Object? data, Map<String, dynamic>? queryParameter});
}
