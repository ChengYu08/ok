import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_in_logic.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage(name: "SignInPage")
class SignInPage extends StatelessWidget {
  final logic = Get.put(SignInLogic());
  SignInPage({super.key});
  

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          body: SingleChildScrollView(
          child: Container( child: Text("SignInPage"),),
        ),
      ),
    );
  }

}
