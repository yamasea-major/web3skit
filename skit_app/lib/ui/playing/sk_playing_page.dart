import 'package:flutter/material.dart';

import '../common/widget_video_play.dart';

// playingpage

class SkPlayeringPage extends StatefulWidget {
  const SkPlayeringPage({super.key});

  @override
  State<SkPlayeringPage> createState() => _SkSkPlayeringeState();
}

class _SkSkPlayeringeState extends State<SkPlayeringPage> {
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(buildHomePlay());
    }

    return PageView(
      scrollDirection: Axis.vertical, // 滑动方向为垂直方向
      children: children,
    );
  }

  Widget buildHomePlay() {
    return Expanded(child: WidgetVideoPlay());
  }

  //!end class
}
