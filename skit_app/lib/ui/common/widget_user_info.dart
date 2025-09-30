import 'package:avatar_plus/avatar_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// userinfo widget

class WidgetUserInfo extends StatefulWidget {
  const WidgetUserInfo({super.key});

  static final double innerHeight = 80;

  @override
  State<WidgetUserInfo> createState() => _WidgetUserInfoState();
}

class _WidgetUserInfoState extends State<WidgetUserInfo> {
  Color mStarColor = Colors.white;
  Color mChatColor = Colors.white;
  Color mHeartColor = Colors.white;
  bool mStarFlag = false;
  bool mHeartFlag = false;

  @override
  Widget build(BuildContext context) {
    const double topBorder = 0;
    return Container(
      width: SkCommonDef.mScreenW,
      height: WidgetUserInfo.innerHeight,
      color: Colors.amber,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: topBorder.w,
            child: AvatarPlus(
              "jonny",
              height: 64.w,
              width: 64.w,
            ),
          ),
          Positioned(
              left: 70.w,
              top: topBorder.w,
              child: Text("XXXname",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: f20))),
          Positioned(
              left: 70.w,
              top: topBorder.w + 40.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("200",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: f12)),
                  SizedBox(width: b4.w),
                  Text("Follow",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: f12)),
                  SizedBox(width: b8.w),
                  Text("1932",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: f12)),
                  SizedBox(width: b4.w),
                  Text("Fans",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: f12)),
                  SizedBox(width: b8.w),
                  Text("19987",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: f12)),
                  SizedBox(width: b4.w),
                  Text("Right",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: f12)),
                ],
              ))
        ],
      ),
    );
  }

  //!end class
}
