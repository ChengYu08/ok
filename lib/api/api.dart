import 'package:dio/dio.dart';

import 'http.dart';
import 'url.dart';

class Api {
  static final http = Http();
  static Dio dio = http.dio;

  // 登录
  static Future login({
    required String username,
    required String password,
    // String? channel,
  }) async {
    print("1");
    final res = await dio.post(Url.login, data: {
      "username": username,
      "password": password,
      // "channel": channel ?? "",
    });
    return res.data;
  }

  /// 管理员登录
  static Future managerLogin({
    required String username,
    required String password,
  }) async {
    final res = await dio.post(Url.managerLogin, data: {
      "user_name": username,
      "password": password,
    });
    return res.data;
  }

  // 注册
  static Future register({
    required String username,
    required String password,
    required String hardware,
    required String referrerId,
  }) async {
    print(1);
    final res = await dio.post(Url.register, data: {
      "username": username,
      "password": password,
      "hardware": hardware,
      "referrerId": referrerId,
    });
    return res.data;
  }

  // 发布需求
  static Future publish({
    required String projectID,
  }) async {
    final res = await dio.post(Url.publish, data: {
      "projectID": projectID,
    });
    return res.data;
  }

  // 创建需求
  static create(
    Map<String, dynamic> project,
    int opt, {
    String pid = "",
  }) async {
    final res = await dio.post(Url.create,
        data: pid.isEmpty
            ? {
                "project": project,
                // 1=存草稿箱，2=发稿
                "opt": opt,
              }
            : {
                "project": project,
                // 1=存草稿箱，2=发稿
                "opt": opt,
                // 空=新增，非空=编辑
                "pid": pid,
              });
    return res.data;
  }

  // 需求列表
  static getList({
    //1=我发布的，其它=推荐
    required int listType,
    // 页码
    required int? index,
    // 每页数量
    required int? limit,
  }) async {
    final res = await dio.post(Url.projectList, data: {
      "page": {
        "index": index ?? 1,
        "limit": limit ?? 40,
      },
      "listType": 1,
    });
    return res.data;
  }

  // 获取个人信息
  static userInfo() async {
    final res = await dio.post(Url.userinfo, data: {});
    return res.data;
  }

  // 支付费用
  static payDeposit(String projectID) async {
    final res = await dio.post(Url.payDeposit, data: {
      "projectID": projectID,
    });
    return res.data;
  }

  // 抢需求
  static join(String projectID) async {
    final res = await dio.post(Url.join, data: {
      projectID: projectID,
    });
    return res.data;
  }

  // 接单 已接订单

  static orderList({
    required int index,
    required int limit,
    required int listType,
  }) async {
    final res = await dio.post(Url.orderList, data: {
      "index": index,
      "limit": limit,
      "listType": listType,
    });
    return res.data;
  }
}
