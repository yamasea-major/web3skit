import '../datalayer/sk_skit_info_chunk.dart';
import '../frame/sk_notifier.dart';

class SkSkitInfoNotifier extends SkNotifier {
  //
  SkSkitInfoChunk? mSkitInfoChunk;
  //
  int mStarNum = 0;
  int mHearNum = 0;
  int mChatNum = 0;
  bool mIsHeart = false;
  bool mIsStar = false;
  //
  SkSkitInfoNotifier() {
    mKey = 'SkSkitInfoNotifier';
    mStarNum = 12334;
    mHearNum = 4404;
    mChatNum = 21;
  }

  void updateSkitInfo(SkSkitInfoChunk? skitinfo) {
    mSkitInfoChunk = skitinfo;
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
