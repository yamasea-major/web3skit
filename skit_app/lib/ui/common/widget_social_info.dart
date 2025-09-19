import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_def.dart';

// search widget

class WidgetSocialInfo extends StatefulWidget {
  const WidgetSocialInfo({super.key});

  @override
  State<WidgetSocialInfo> createState() => _WidgetSocialInfoState();
}

class _WidgetSocialInfoState extends State<WidgetSocialInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filled(
            onPressed: () {
              //
            },
            icon: Icon(CupertinoIcons.home)),
        Text('13.6M', style: TextStyle(color: Colors.white, fontSize: f12)),
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
        Text('3821', style: TextStyle(color: Colors.white, fontSize: f12)),
      ],
    );
  }

  //!end class
}
