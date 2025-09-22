import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../sk_ui_def.dart';

// userinfo widget

class WidgetFunctionBar extends StatefulWidget {
  const WidgetFunctionBar({super.key});

  @override
  State<WidgetFunctionBar> createState() => _WidgetFunctionBarState();
}

class _WidgetFunctionBarState extends State<WidgetFunctionBar> {
  Color mStarColor = Colors.white;
  Color mChatColor = Colors.white;
  Color mHeartColor = Colors.white;
  bool mStarFlag = false;
  bool mHeartFlag = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
        child: Stack(
      children: [
        Positioned(
            left: 0,
            top: 0,
            child: Container(
              color: Colors.red,
              width: 64,
              height: 64,
            ))
      ],
    ));
  }

  //!end class
}
