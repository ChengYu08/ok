class Url {
  ///主机-线上
  static const String host = 'http://192.168.101.183:7000/api';

  /// 本地调试
  static const String localHost = 'http://192.168.100.31:8080/api';

  // 用户名密码注册
  static const String register = "$host/account/register";

  // 用户名密码登录
  static const String login = "$host/account/login";

  // 发布需求
  static const String publish = "$host/project/publish";

  // 创建需求
  static const String create = "$host/project/create";

  // 需求列表
  static const String projectList = "$host/project/project_list";

  // 个人用户信息
  static const String userinfo = "$host/account/userinfo";

  // 支付费用
  static const String payDeposit = "$host/project/pay_deposit";

  ///管理员登录
  static const String managerLogin = '$host/v1/sysUser/operatorLogin';

  // 接单 抢需求
  static const String join = "$host/project/join";

  // 接单员 已接订单
  static const String orderList = "$host/project/order_list";
}
