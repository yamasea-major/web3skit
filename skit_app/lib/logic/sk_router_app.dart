// multi router base class

import 'package:flutter/material.dart';

import '../base/router/sk_router_base.dart';
import 'package:go_router/go_router.dart';

import '../ui/search/sk_search_page.dart';
import '../ui/sk_home_page.dart';

class SkRouterApp extends SkRouterBase {
  @override
  List getRouters() {
    return [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SkHomePage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const SkHomePage();
        },
      ),
      GoRoute(
        path: '/search',
        builder: (BuildContext context, GoRouterState state) {
          return const SkSearchPage();
        },
      ),
    ];
  }

  //!end class
}
