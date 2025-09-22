import 'package:skit_app/logic/sk_login_sys.dart';

import 'base/router/sk_router_mgr.dart';

class SkApp {
  //
  static SkApp? _instance;

  SkApp._internal();

  // static SkApp get instance => _intance ??= SkApp._internal();

  factory SkApp() => _instance ??= SkApp._internal();

  late SkRouterMgr? mRouterMgr;
  late SkLoginSys? mLogicSys;

  void init() {
    // init router
    mRouterMgr = SkRouterMgr();
    mRouterMgr?.init();
    // init logicsys
    mLogicSys = SkLoginSys();
    mLogicSys?.init();
  }

  void destroy() {
    //
  }

  //!end class
}

var gSkApp = SkApp();
