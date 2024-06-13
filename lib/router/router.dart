import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/", page: SplashPage.page, initial: true),
        AutoRoute(path: "/home", page: HomePage.page),
        AutoRoute(path: "/signInPage", page: SignInPage.page),
        AutoRoute(path: "/signUpPage", page: SignUpPage.page),
        // 这里手动去添加路由 可以为子路由
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
