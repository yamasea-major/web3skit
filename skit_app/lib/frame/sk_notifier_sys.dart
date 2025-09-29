import 'sk_notifier.dart';
import 'sk_sys_base.dart';

class SkNotifierSys extends SkSysBase {
  //
  Map<String, SkNotifier> mNotifiersPool = {};

  @override
  void init() {
    //
  }

  @override
  void destroy() {
    //
    _clearSkNotifier();
  }

  bool registSkNotifier(SkNotifier notifier) {
    // mNotifiersPool.
    bool ret = mNotifiersPool.containsKey(notifier.mNameKey);
    if (ret) {
      return false;
    }
    mNotifiersPool[notifier.mNameKey] = notifier;
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
