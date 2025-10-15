// multi router base class

import 'package:flutter/material.dart';
import 'package:skit_app/sk_app.dart';

import '../base/router/sk_router_base.dart';
import 'package:go_router/go_router.dart';

import '../datalayer/sk_skit_data_chunk.dart';
import '../ui/filter/sk_filter_page.dart';
import '../ui/playing/sk_playing_page.dart';
import '../ui/rankpage/sk_rank_page.dart';
import '../ui/search/sk_search_page.dart';
import '../ui/sk_error_page.dart';
import '../ui/sk_home_tab_page.dart';

class SkRouterApp extends SkRouterBase {
  @override
  List getRouters() {
    return [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SkHomeTabPage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return SkHomeTabPage();
        },
      ),
      GoRoute(
        path: '/search',
        builder: (BuildContext context, GoRouterState state) {
          return const SkSearchPage();
        },
        redirect: (context, state) {
          if (!gSkApp.mLogicSys!.mIsLogin) {
            return '/login';
          }
          return null;
        },
      ),
      GoRoute(
        path: '/playing',
        builder: (BuildContext context, GoRouterState state) {
          //
          if (state.extra is SkSkitDataChunk) {
            //
            return SkPlayeringPage(
              data: state.extra as SkSkitDataChunk,
            );
          } else {
            return SkErrorPage(msg: "Param Error");
          }
        },
      ),
      GoRoute(
          path: '/filter',
          builder: (BuildContext context, GoRouterState state) {
            return SkFilterPage();
          }),
      GoRoute(
          path: '/rank',
          // builder: (BuildContext context, GoRouterState state) {
          //   return SkRankPage();
          // },
          builder: (BuildContext context, GoRouterState state) {
            return SkRankPage();
          }),
    ];
  }

  //!end class
}
