import 'package:flutter/material.dart';

import '../common/widget_video_play.dart';

class SkInHomePage extends StatefulWidget {
  const SkInHomePage({super.key});

  @override
  State<SkInHomePage> createState() => _SkInHomePageState();
}

class _SkInHomePageState extends State<SkInHomePage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(WidgetVideoPlay());
    }

    return PageView(
      scrollDirection: Axis.vertical, // 滑动方向为垂直方向
      children: children,
    );
  }

  //!end class
}
