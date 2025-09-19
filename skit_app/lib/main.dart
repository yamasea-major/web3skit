import 'package:flutter/material.dart';
import 'sk_app.dart';
import 'ui/sk_home_page.dart';

void main() async {
  //init all system
  SkApp skApp = SkApp();
  skApp.init();
  //

  //
  runApp(SkHomePage());
}
