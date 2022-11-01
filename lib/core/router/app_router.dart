import 'package:auto_route/auto_route.dart';

import '../../presentation/auth/auth_page.dart';
import '../../presentation/error/error_page.dart';
import '../../presentation/success/success_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthPage, path: "auth", initial: true),
    AutoRoute(page: SuccessPage, path: "success"),
    AutoRoute(page: ErrorPage, path: "error"),
  ],
)
class $AppRouter {}
