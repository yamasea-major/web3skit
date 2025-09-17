import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'sk_home_tab_page.dart';

class SkHomePage extends StatelessWidget {
  const SkHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skit Web3',
      builder: (context, child) {
        // init ScreenUtil
        ScreenUtil.init(context);
        //
        return Theme(
            data: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            child: SkHomeTabPage());
      },
    );
  }
}
