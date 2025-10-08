import 'sk_data_chunk.dart';

enum SkEnumPlayState {
  skSkitPlay,
  skSkitPause,
}

class SkSkitDataChunk extends SkDataChunk {
  //
  String mId = "dfdswevcd234";
  //
  String mUrl = "";
  //
  double mPlayeTime = 0.0;
  //
  SkEnumPlayState mPlayState = SkEnumPlayState.skSkitPlay;
  //
  int mTotalNum = 80;
  //
  int mCurNum = 1;
  //
  String mSkitName = "drama01";
  //
  String mInfoDsp = "sdfdsfdsfdsfdsfdsfsdfdsfsdfdsfdsfdsf sdfdsfdsecdfdsf";
  // society info about star
  int mStarNum = 14301010;
  // society info about heart
  int mHeartNum = 453344;
  //
  int mChatNum = 2000;
  //
  SkSkitDataChunk() {
    //
    mDataType = "SkSkitDataChunk";
  }

  //!end class
}
