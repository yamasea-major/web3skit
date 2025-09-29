import 'package:skit_app/sk_app.dart';

import '../frame/sk_notifier.dart';
import '../frame/sk_sys_base.dart';
import '../notifiers/sk_login_notifier.dart';

class SkLoginSys extends SkSysBase {
  bool mIsLogin = false;

  @override
  void init() {
    //
  }

  @override
  void destroy() {
    //
  }

  bool login() {
    mIsLogin = true;
    //
    SkNotifier? target = gSkApp.mSkNotiferSys?.getSkNotifier('SkLoginNotifier');
    if (target != null && target is SkLoginNotifier) {
      target.changLogin(mIsLogin);
    }
    //
    return true;
  }

  //
  bool logOut() {
    mIsLogin = false;
    //
    SkNotifier? target = gSkApp.mSkNotiferSys?.getSkNotifier('SkLoginNotifier');
    if (target != null && target is SkLoginNotifier) {
      target.changLogin(mIsLogin);
    }
    return true;
  }

  //
  bool netGetCode() {
    return true;
  }

  //!end class
}
