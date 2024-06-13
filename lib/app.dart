import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/app_view.dart';
import 'utils/keyboard_util.dart';
import 'config.dart';
import 'router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final config = Config.getIt<AppRouter>().config();
    return AppView(
      builder: (theme, builder) => GetMaterialApp.router(
        routerDelegate: config.routerDelegate,
        routeInformationParser: config.routeInformationParser,
        routeInformationProvider: config.routeInformationProvider,
        backButtonDispatcher: config.backButtonDispatcher,
        title: Config.appName,
        theme: theme,
        defaultTransition: Transition.fadeIn,
        builder: builder,
        debugShowCheckedModeBanner: false,
        // 路由回调
        routingCallback: (Routing? routing) {
          if (routing != null) {
            // 路由跳转 关闭键盘
            KeyboardUtil.dismissKeyboard();
          }
        },
      ),
    );
  }
}

class InitBinding extends Bindings {
  @override
  void dependencies() async {}
}
