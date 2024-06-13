import 'dart:developer' as console;

class LogUtil {
  static var _isDebug = true;
  static void init(
      {String? title, required bool isDebug, int limitLength = 800}) {
    _isDebug = isDebug;
  }

  static log(
    dynamic content, {
    String title = "",
    String type = "日志",
    String time = "",
  }) {
    if (_isDebug) {
      console.log("$time [$type [$title]] ${content.toString()}");
    }
  }
}
