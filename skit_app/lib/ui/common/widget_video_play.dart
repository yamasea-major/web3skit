import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_def.dart';

class WidgetVideoPlay extends StatefulWidget {
  const WidgetVideoPlay({super.key});

  @override
  State<WidgetVideoPlay> createState() => _WidgetVideoPlayState();
}

class _WidgetVideoPlayState extends State<WidgetVideoPlay> {
  bool mShowMask = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        // constraints: BoxConstraints.expand(),
        child: Stack(
          children: [
            // video play
            buildVideoWidget(),
            // video mask
            buildMask(),
          ],
        ));

    // @override
    // void dispose() {
    //   super.dispose();
    //   var a = 1;
    // }

    //!end class
  }

  Widget buildVideoWidget() {
    return SizedBox(
        // color: const Color.fromARGB(143, 20, 239, 111), // 设置背景颜色为蓝色
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'background with color',
            style: TextStyle(
                color: Colors.green,
                fontSize: f16,
                decoration: TextDecoration.none),
          ),
        ));
  }

  Widget buildControlWidget() {
    return Positioned(
      right: 10.0,
      bottom: 100.0,
      child: Column(
        children: [
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('13.6M',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f12,
                  decoration: TextDecoration.none)),
          SizedBox(
            height: b12,
          ),
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('85', style: TextStyle(color: Colors.white, fontSize: f12)),
          SizedBox(
            height: b12,
          ),
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('3821',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f12,
                  decoration: TextDecoration.none)),
        ],
      ),
    );
  }

  buildMask() {
    if (mShowMask) {
      return Container(
        color: Color.fromARGB(14, 0, 0, 0),
      );
    }
    return SizedBox();
  }

  //!end class
}
