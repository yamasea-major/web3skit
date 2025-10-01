import '../notifiers/sk_login_notifier.dart';
import '../notifiers/sk_mult_skits_list_notifier.dart';
import '../notifiers/sk_single_skits_list_notifier.dart';
import '../notifiers/sk_skit_setting_notifier.dart';
import 'sk_notifier.dart';
import 'sk_sys_base.dart';

class SkNotifierSys extends SkSysBase {
  //
  Map<String, SkNotifier> mNotifiersPool = {};

  @override
  void init() {
    // the code write here temp;
    registSkNotifier(SkLoginNotifier());
    registSkNotifier(SkSkitSettingNotifier());
    registSkNotifier(SkMultSkitsListNotifier());
    registSkNotifier(SkSingleSkitsListNotifier());
  }

  @override
  void destroy() {
    //
    _clearSkNotifier();
  }

  bool registSkNotifier(SkNotifier notifier) {
    // mNotifiersPool.
    bool ret = mNotifiersPool.containsKey(notifier.getKey());
    if (ret) {
      return false;
    }
    mNotifiersPool[notifier.getKey()] = notifier;
    return true;
  }

  bool unRegistSkNotifier(String name) {
    SkNotifier? ret = mNotifiersPool.remove(name);
    if (ret != null) {
      return true;
    }
    return false;
  }

  void _clearSkNotifier() {
    //
    mNotifiersPool.clear();
  }

  SkNotifier? getSkNotifier(String name) {
    bool ret = mNotifiersPool.containsKey(name);
    if (ret) {
      return mNotifiersPool[name];
    }
    return null;
  }

  //!end class
}
