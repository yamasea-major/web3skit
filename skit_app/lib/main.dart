import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'SkApp.dart';
import 'ui/SkHomePage.dart';

void main() async {
  //init all system
  SkApp skApp;

  await ScreenUtil.ensureScreenSize();

  runApp(SkHomePage());
}
