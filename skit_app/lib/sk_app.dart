import 'base/router/sk_router_mgr.dart';

class SkApp {
  late SkRouterMgr mRouterMgr;

  void init() {
    // init router
    mRouterMgr = SkRouterMgr();
    mRouterMgr.init();
    //
  }

  void destroy() {
    //
  }

  //!end class
}
