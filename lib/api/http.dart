import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ok/utils/toast.dart';

class Http {
  Dio dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(milliseconds: 2000),
      receiveTimeout: const Duration(milliseconds: 2000),
      sendTimeout: const Duration(milliseconds: 2000),
    ),
  );

  final box = GetStorage();

  Http() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          options.headers['token'] = box.read("token");
          options.headers['l'] = box.read("lang") ?? "en";
          options.headers['t'] = Platform.operatingSystem;

          return handler.next(options);
        },
        onResponse:
            (Response response, ResponseInterceptorHandler handler) async {
          final data = response.data;

          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) async {
          print("错误 $e");
          AppToast.show("网络异常，请稍后再试!");
          return handler.next(e);
        },
      ),
    );
  }
}
