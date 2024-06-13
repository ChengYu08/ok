import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_up_logic.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage(name: "SignUpPage")
class SignUpPage extends StatelessWidget {
  final logic = Get.put(SignUpLogic());
  SignUpPage({super.key});
  

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          body: SingleChildScrollView(
          child: Container( child: Text("SignUpPage"),),
        ),
      ),
    );
  }

}
