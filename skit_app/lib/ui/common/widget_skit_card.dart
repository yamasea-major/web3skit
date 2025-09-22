import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_def.dart';

// skit card

class WidgetSkitCard extends StatefulWidget {
  const WidgetSkitCard({super.key});

  @override
  State<WidgetSkitCard> createState() => _WidgetSkitCardState();
}

class _WidgetSkitCardState extends State<WidgetSkitCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 30,
      // height: 42,
      child: Image.asset(
        'assets/bgimg/skit_bg.webp',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  //!end class
}
