// multi router base class

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../base/router/sk_router_base.dart';
import '../ui/login/sk_login_page.dart';
import '../ui/login/sk_regist_page.dart';

class SkRouterCommon extends SkRouterBase {

  @override
  List getRouters() {
    return [
      GoRoute(
        path: '/regist',
        builder: (BuildContext context, GoRouterState state) {
          return const SkRegistPage();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const SkLoginPage();
        },
      ),
    ];
  }

  //!end class
}
