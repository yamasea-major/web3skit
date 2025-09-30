import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        width: 200.w,
        height: 400.w,
        fit: BoxFit.cover,
      ),
    );
  }

  //!end class
}
