import 'package:get/get.dart';
import 'package:ok/config.dart';

class SplashLogic extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO
    // 这里做 判断是否登录 如果登录调整到首页
    // 如果没有登录跳转到登录或者注册页面

    // 如
    Future.delayed(const Duration(seconds: 2), () {
      Config.router.pushNamed("/home");
    });
    // Config.router.pushNamed("/signInPage");
    // Config.router.pushNamed("/signUpPage");
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
