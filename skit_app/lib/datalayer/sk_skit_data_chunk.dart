import 'sk_data_chunk.dart';

enum SkEnumPlayState {
  skSkitPlay,
  skSkitPause,
}

class SkSkitDataChunk extends SkDataChunk {
  //
  String mUrl = "";
  //
  double mPlayeTime = 0.0;
  //
  SkEnumPlayState mPlayState = SkEnumPlayState.skSkitPlay;
  //
  int mNum = 1;
  //
  SkSkitDataChunk() {
    //
    mDataType = "SkSkitDataChunk";
  }

  //!end class
}
