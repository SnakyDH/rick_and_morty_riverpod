import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rick_and_morty_riverpod/core/env/environment_constants.dart';

class ApiService {
  static const Duration _timeOut = Duration(seconds: 60);

  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: _timeOut,
      receiveTimeout: _timeOut,
      sendTimeout: _timeOut,
      baseUrl: Environment.apiUrl,
      contentType: 'application/json',
    ),
  );

  static ApiService? _instance;
  static ApiService get instance {
    _instance ??= ApiService._();
    return _instance!;
  }

  ApiService._() {
    _dio.interceptors.add(
      PrettyDioLogger(requestHeader: true, requestBody: true),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
  }

  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
  }) {
    return _dio.get(endpoint, data: body, queryParameters: params);
  }

  Future<Response> post(
    String endpoint, {
    Object? body,
    Map<String, dynamic>? params,
  }) {
    return _dio.post(endpoint, data: body, queryParameters: params);
  }

  Future<Response> postFormData(
    String endpoint, {
    required FormData formData,
    Map<String, dynamic>? params,
  }) {
    return _dio.post(endpoint, data: formData, queryParameters: params);
  }

  Future<Response> delete(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
  }) {
    return _dio.delete(endpoint, data: data, queryParameters: params);
  }

  Future<Response> patch(
    String endpoint, {
    Map<String, String>? data,
    Map<String, dynamic>? params,
  }) {
    return _dio.patch(endpoint, data: data, queryParameters: params);
  }

  Future<Response> put(
    String endpoint, {
    Object? body,
    Map<String, dynamic>? params,
  }) {
    return _dio.put(endpoint, data: body, queryParameters: params);
  }

  Future<Response> download(
    String url, {
    required String savePath,
    Map<String, dynamic>? params,
  }) {
    return _dio.download(url, savePath, queryParameters: params);
  }
}
