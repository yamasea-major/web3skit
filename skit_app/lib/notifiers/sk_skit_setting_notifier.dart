import '../datalayer/sk_skit_share_chunk.dart';
import '../frame/sk_notifier.dart';

class SkSkitSettingNotifier extends SkNotifier {
  //
  List<SkSkitShareItem> mList0 = [];
  List<SkSkitShareItem> mList1 = [];
  //
  SkSkitSettingNotifier() {
    mKey = 'SkSkitSettingNotifier';
    //
    mList0.add(SkSkitShareSpeedItem());
    mList0.add(SkSkitShareHDItem());
    mList0.add(SkSkitShareFullScreenItem());
    mList0.add(SkSkitShareFontSizeItem());
    //
    mList1.add(SkSkitShareTVItem());
    mList1.add(SkSkitShareClockItem());
    mList1.add(SkSkitShareWindowItem());
    mList1.add(SkSkitShareFeedbackItem());
  }

  // bool mIsLogin = false;

  // void changLogin(bool isLogin) {
  //   mIsLogin = isLogin;
  //   notifyListeners();
  // }

  //!end class
}
