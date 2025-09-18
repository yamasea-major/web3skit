import 'package:go_router/go_router.dart';
import 'package:skit_app/frame/sk_sys_base.dart';

import '../../logic/sk_router_app.dart';
import '../../logic/sk_router_common.dart';

// multi router base class

class SkRouterMgr extends SkSysBase {
  static List mRouters = [];

  static late GoRouter mGoRouter;

  @override
  void init() {
    //
    SkRouterApp skRouterApp = SkRouterApp();
    assemble(skRouterApp.getRouters());
    //
    SkRouterCommon skRouterCommon = SkRouterCommon();
    assemble(skRouterCommon.getRouters());
    //
    mGoRouter = GoRouter(routes: <RouteBase>[...mRouters]);
    //
  }

  @override
  void destroy() {
    //
  }

  // assemble routs

  static void assemble(List routers) {
    mRouters = [...mRouters, ...routers];
  }

  //!end class
}
