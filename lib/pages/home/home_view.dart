import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_logic.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage(name: "HomePage")
class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Text("HomePage"),
          ),
        ),
      ),
    );
  }
}
