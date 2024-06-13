import 'dart:developer';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'router/router.dart';
import 'service/auth_service.dart';
import 'utils/storage_manager.dart';

class Config {
  static const uiW = 375.0;
  static const uiH = 812.0;
  static const double textScaleFactor = 1.0;
  static const appName = "ok";
  static final getIt = GetIt.instance;
  static final botToastBuilder = BotToastInit();

  // 注册全局路由相关
  static AppRouter get router {
    return getIt<AppRouter>();
  }

  static Future init(Function() runApp) async {
    // debugPaintSizeEnabled = true;
    // debugPaintBaselinesEnabled = true;
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (FlutterErrorDetails details) {
      // 这里可以处理或记录错误，比如打印错误信息
      log("[全局错误log][error] ${details.exceptionAsString()}");
    };
    getIt.registerSingleton<AppRouter>(AppRouter());
    await StorageManager.init();
    Get.put(AuthService());
    runApp();

    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    var brightness =
        !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: brightness,
      statusBarIconBrightness: brightness,
    ));
  }
}
