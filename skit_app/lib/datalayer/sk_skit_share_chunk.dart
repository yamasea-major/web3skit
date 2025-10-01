import 'sk_data_chunk.dart';

enum SkitShareSetting {
  skitShareBase,
  skitShareSpeed,
  skitShareHD,
  skitShareFullScreen,
  skitShareFontSize,
  skitShareTV,
  skitShareClock,
  skitShareWindow,
  skitShareFeedback
}

//
class SkSkitShareItem extends SkDataChunk {
  //
  SkitShareSetting mShareType = SkitShareSetting.skitShareBase;
  //
  SkSkitShareItem() {
    //
    mDataType = "SkSkitShareItem";
  }
}

//
class SkSkitShareSpeedItem extends SkSkitShareItem {
  //
  SkSkitShareSpeedItem() {
    //
    mDataType = "SkSkitShareSpeedItem";
    mShareType = SkitShareSetting.skitShareSpeed;
  }
}

//
class SkSkitShareHDItem extends SkSkitShareItem {
  //
  SkSkitShareHDItem() {
    //
    mDataType = "SkSkitShareHDItem";
    mShareType = SkitShareSetting.skitShareHD;
  }
}

//
class SkSkitShareFullScreenItem extends SkSkitShareItem {
  //
  SkSkitShareFullScreenItem() {
    //
    mDataType = "SkSkitShareFullScreenItem";
    mShareType = SkitShareSetting.skitShareFullScreen;
  }
}

//
class SkSkitShareFontSizeItem extends SkSkitShareItem {
  //
  SkSkitShareFontSizeItem() {
    //
    mDataType = "SkSkitShareFontSizeItem";
    mShareType = SkitShareSetting.skitShareFontSize;
  }
}

//
class SkSkitShareTVItem extends SkSkitShareItem {
  //
  SkSkitShareTVItem() {
    //
    mDataType = "SkSkitShareTVItem";
    mShareType = SkitShareSetting.skitShareTV;
  }
}

//
class SkSkitShareClockItem extends SkSkitShareItem {
  //
  SkSkitShareClockItem() {
    //
    mDataType = "SkSkitShareClockItem";
    mShareType = SkitShareSetting.skitShareClock;
  }
}

//
class SkSkitShareWindowItem extends SkSkitShareItem {
  //
  SkSkitShareWindowItem() {
    //
    mDataType = "SkSkitShareWindowItem";
    mShareType = SkitShareSetting.skitShareWindow;
  }
}

//
class SkSkitShareFeedbackItem extends SkSkitShareItem {
  //
  SkSkitShareFeedbackItem() {
    //
    mDataType = "SkSkitShareFeedbackItem";
    mShareType = SkitShareSetting.skitShareFeedback;
  }
}
