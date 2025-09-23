import '../frame/sk_sys_base.dart';

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
    return true;
  }

  //
  bool loginOut() {
    mIsLogin = false;
    return true;
  }

  //
  bool netGetCode() {
    return true;
  }

  //!end class
}
