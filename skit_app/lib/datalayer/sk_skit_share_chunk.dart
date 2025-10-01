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
  String mLabel = "";
  //
  SkSkitShareItem() {
    //
    mDataType = "SkSkitShareItem";
  }
}

//
enum SkitSpeedType {
  skitSpeed75,
  skitSpeed100,
  skitSpeed125,
  skitSpeed150,
  skitSpeed200,
  skitSpeed300,
}

class SkSkitShareSpeedItem extends SkSkitShareItem {
  //
  SkitSpeedType mSkitSpeedType = SkitSpeedType.skitSpeed100;
  //
  SkSkitShareSpeedItem() {
    //
    mDataType = "SkSkitShareSpeedItem";
    mShareType = SkitShareSetting.skitShareSpeed;
    mLabel = '倍速';
  }
}

//
enum SkitHDType {
  skitHD360,
  skitHD480,
  skitHD540,
  skitHD720,
  skitHD1080,
}

class SkSkitShareHDItem extends SkSkitShareItem {
  //
  SkitHDType mSkitHDType = SkitHDType.skitHD720;
  //
  SkSkitShareHDItem() {
    //
    mDataType = "SkSkitShareHDItem";
    mShareType = SkitShareSetting.skitShareHD;
    mLabel = '清晰度';
  }
}

//
class SkSkitShareFullScreenItem extends SkSkitShareItem {
  //
  SkSkitShareFullScreenItem() {
    //
    mDataType = "SkSkitShareFullScreenItem";
    mShareType = SkitShareSetting.skitShareFullScreen;
    mLabel = '清屏播放';
  }
}

//
enum SkitFontType {
  skitFontStandard,
  skitFontBig,
}

class SkSkitShareFontSizeItem extends SkSkitShareItem {
  //
  SkitFontType mSkitFontType = SkitFontType.skitFontStandard;
  //
  SkSkitShareFontSizeItem() {
    //
    mDataType = "SkSkitShareFontSizeItem";
    mShareType = SkitShareSetting.skitShareFontSize;
    mLabel = '字体大小';
  }
}

//
class SkSkitShareTVItem extends SkSkitShareItem {
  //
  SkSkitShareTVItem() {
    //
    mDataType = "SkSkitShareTVItem";
    mShareType = SkitShareSetting.skitShareTV;
    mLabel = '投屏';
  }
}

//
class SkSkitShareClockItem extends SkSkitShareItem {
  //
  SkSkitShareClockItem() {
    //
    mDataType = "SkSkitShareClockItem";
    mShareType = SkitShareSetting.skitShareClock;
    mLabel = '定时关闭';
  }
}

//
class SkSkitShareWindowItem extends SkSkitShareItem {
  //
  bool mSwitch = false;
  //
  SkSkitShareWindowItem() {
    //
    mDataType = "SkSkitShareWindowItem";
    mShareType = SkitShareSetting.skitShareWindow;
    mLabel = '小窗模式';
  }
}

//
class SkSkitShareFeedbackItem extends SkSkitShareItem {
  //
  SkSkitShareFeedbackItem() {
    //
    mDataType = "SkSkitShareFeedbackItem";
    mShareType = SkitShareSetting.skitShareFeedback;
    mLabel = '举报';
  }
}
