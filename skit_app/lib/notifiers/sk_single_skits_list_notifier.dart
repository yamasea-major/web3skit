import '../frame/sk_notifier.dart';

class SkLoginNotifier extends SkNotifier {
  //
  SkLoginNotifier() {
    mKey = 'SkLoginNotifier';
  }

  bool mIsLogin = false;

  void changLogin(bool isLogin) {
    mIsLogin = isLogin;
    notifyListeners();
  }

  //!end class
}
