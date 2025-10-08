import '../datalayer/sk_ad_data_chunk.dart';
import '../datalayer/sk_data_chunk.dart';
import '../datalayer/sk_skit_data_chunk.dart';
import '../frame/sk_notifier.dart';

//home page mult skits list

class SkMultSkitsListNotifier extends SkNotifier {
  //
  List<SkDataChunk> dataList = [];
  //
  SkMultSkitsListNotifier() {
    mKey = 'SkMultSkitsListNotifier';
    init();
  }

  @override
  void init() {
    //
    super.init();
    //
    // local cache some data
    //
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkAdDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkAdDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkAdDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
    dataList.add(SkSkitDataChunk());
  }

  // bool mIsLogin = false;

  // void changLogin(bool isLogin) {
  //   mIsLogin = isLogin;
  //   notifyListeners();
  // }

  //!end class
}
