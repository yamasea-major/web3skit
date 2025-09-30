import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text('13.6M',
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
        Text('85',
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
            icon:
                Icon(CupertinoIcons.heart_fill, size: s32, color: mHeartColor)),
        Text('3821',
            style: TextStyle(
                color: Colors.white,
                fontSize: f14.w,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  //!end class
}
