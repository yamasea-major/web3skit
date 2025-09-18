import 'package:flutter/material.dart';

class WidgetVideoPlay extends StatefulWidget {
  const WidgetVideoPlay({super.key});

  @override
  State<WidgetVideoPlay> createState() => _WidgetVideoPlayState();
}

class _WidgetVideoPlayState extends State<WidgetVideoPlay> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildVideoWidget(),
        //
        buildControlWidget(),
        //
        buildVideoInfoWidget(),
        //
        buildSocialInfoWidget(),
      ],
    );

    // @override
    // void dispose() {
    //   super.dispose();
    //   var a = 1;
    // }

    //!end class
  }

  Widget buildVideoWidget() {
    return SizedBox();
  }

  Widget buildControlWidget() {
    return SizedBox();
  }

  Widget buildVideoInfoWidget() {
    return SizedBox();
  }

  Widget buildSocialInfoWidget() {
    return SizedBox();
  }

  //!end class
}
