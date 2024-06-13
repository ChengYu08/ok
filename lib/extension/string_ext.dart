extension StringExt on String? {
  /// 将字符串转换为大写（如果字符串非空）
  String toUpperCaseIfNotNull() {
    return this?.toUpperCase() ?? '';
  }

  bool isNullOrEmpty() {
    if (this == null) {
      return true;
    }
    return this!.trim().isEmpty;
  }

  ///替换多余的回车字符
  String? replaceBreak() {
    if (this == null || this!.isEmpty) {
      return this;
    }
    return this!.replaceAll(RegExp("\\s{2,}|\t|\r|\n"), '\n');
  }
}
