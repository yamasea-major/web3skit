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

  @override
  void dispose() {
    super.dispose();
  }

  void updateInfo(
      int starNum, int heartNum, int chatNum, bool isHeart, bool isStar) {
    mStarNum = starNum;
    mHearNum = heartNum;
    mChatNum = chatNum;
    mIsHeart = isHeart;
    mIsStar = isStar;
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
