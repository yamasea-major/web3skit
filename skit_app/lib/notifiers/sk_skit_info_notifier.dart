import '../datalayer/sk_skit_data_chunk.dart';
import '../frame/sk_notifier.dart';

class SkSkitInfoNotifier extends SkNotifier {
  //
  SkSkitDataChunk? mSkitInfoChunk;
  //
  int mStarNum = 0;
  int mHearNum = 0;
  int mChatNum = 0;
  bool mIsHeart = false;
  bool mIsStar = false;
  //
  SkSkitInfoNotifier() {
    mKey = 'SkSkitInfoNotifier';
    mStarNum = 0;
    mHearNum = 0;
    mChatNum = 0;
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  void initInfo(SkSkitDataChunk data) {
    mStarNum = data.mStarNum;
    mHearNum = data.mHeartNum;
    mChatNum = data.mChatNum;
    mIsHeart = data.mIsHeart;
    mIsStar = data.mIsStar;
  }

  void updateInfo(SkSkitDataChunk data) {
    mStarNum = data.mStarNum;
    mHearNum = data.mHeartNum;
    mChatNum = data.mChatNum;
    mIsHeart = data.mIsHeart;
    mIsStar = data.mIsStar;
    //
    notifyListeners();
  }

  void changeHeart() {
    mIsHeart = !mIsHeart;
    if (mIsHeart) {
      mHearNum++;
    } else {
      mHearNum--;
    }
    notifyListeners();
  }

  void changeStar() {
    mIsStar = !mIsStar;
    if (mIsStar) {
      mStarNum++;
    } else {
      mStarNum--;
    }
    notifyListeners();
  }

  //!end class
}
