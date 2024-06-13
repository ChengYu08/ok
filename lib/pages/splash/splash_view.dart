import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_logic.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage(name: "SplashPage")
class SplashPage extends StatelessWidget {
  final logic = Get.put(SplashLogic());
  SplashPage({super.key});
  

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          body: SingleChildScrollView(
          child: Container( child: Text("SplashPage"),),
        ),
      ),
    );
  }

}
