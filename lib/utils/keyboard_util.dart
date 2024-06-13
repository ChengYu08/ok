import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeyboardUtil {
  ///关闭键盘
  static dismissKeyboard() {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
  }

  /// 打开键盘
  static openKeyboard(BuildContext context, FocusNode focusNode) {
    if (focusNode.hasFocus == false) {
      FocusScope.of(Get.context!).requestFocus(focusNode);
    }
  }

  bool isShowSoftKeyboard() {
    return WidgetsBinding.instance.focusManager.primaryFocus?.hasFocus ?? false;
  }
}
