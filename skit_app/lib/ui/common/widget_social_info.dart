import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:skit_app/until/sk_extension.dart';

import '../../frame/sk_notifier.dart';
import '../../notifiers/sk_skit_info_notifier.dart';
import '../../sk_app.dart';
import '../sk_ui_def.dart';

// search widget

class WidgetSocialInfo extends StatefulWidget {
  const WidgetSocialInfo({super.key});

  @override
  State<WidgetSocialInfo> createState() => _WidgetSocialInfoState();
}

class _WidgetSocialInfoState extends State<WidgetSocialInfo> {
  Color mStarColor = Colors.white;
  Color mChatColor = Colors.white;
  Color mHeartColor = Colors.white;
  bool mStarFlag = false;
  bool mHeartFlag = false;
  String mStarNum = "";
  String mHeartNum = "";
  String mChatNum = "";

  @override
  Widget build(BuildContext context) {
    //
    SkNotifier? skitInfoNotifier =
        gSkApp.mSkNotiferSys?.getSkNotifier('SkSkitInfoNotifier');
    if (skitInfoNotifier != null && skitInfoNotifier is SkSkitInfoNotifier) {
      mStarFlag = skitInfoNotifier.mIsStar;
      mHeartFlag = skitInfoNotifier.mIsHeart;
      mStarNum = skitInfoNotifier.mStarNum.toStringForM();
      mChatNum = skitInfoNotifier.mChatNum.toStringForM();
      mHeartNum = skitInfoNotifier.mHearNum.toStringForM();
    }

    //
    return Provider.value(
      value: skitInfoNotifier,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                //
                setState(() {
                  mStarFlag = !mStarFlag;
                  if (mStarFlag) {
                    mStarColor = Colors.yellow;
                  } else {
                    mStarColor = Colors.white;
                  }
                });
              },
              icon: Icon(
                CupertinoIcons.star_fill,
                color: mStarColor,
                size: s32.w,
              )),
          Text(mStarNum,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f14.w,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: b12,
          ),
          IconButton(
              onPressed: () {
                //
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: f16.w);
              },
              icon: Icon(CupertinoIcons.chat_bubble_text_fill,
                  size: s32, color: Colors.white)),
          Text(mChatNum,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f14.w,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: b12.w,
          ),
          IconButton(
              onPressed: () {
                //
                setState(() {
                  mHeartFlag = !mHeartFlag;
                  if (mHeartFlag) {
                    mHeartColor = Colors.red;
                  } else {
                    mHeartColor = Colors.white;
                  }
                });
              },
              icon: Icon(CupertinoIcons.heart_fill,
                  size: s32, color: mHeartColor)),
          Text(mHeartNum,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f14.w,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  //!end class
}
