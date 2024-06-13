bool validateEmail(String email) {
  // 更松散的电子邮件验证正则表达式
  final emailRegex = RegExp(
    r'^[\w\.-]+@[\w-]+(\.[\w-]+)+$',
  );

  return emailRegex.hasMatch(email);
}
