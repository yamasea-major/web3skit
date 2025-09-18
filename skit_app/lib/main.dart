import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'sk_app.dart';
import 'ui/sk_home_page.dart';

void main() async {
  //init all system
  SkApp skApp = SkApp();
  skApp.init();

  await ScreenUtil.ensureScreenSize();

  runApp(SkHomePage());
}
