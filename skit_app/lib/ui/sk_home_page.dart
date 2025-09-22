import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../base/router/sk_router_mgr.dart';
import 'sk_ui_common_def.dart';
import 'sk_ui_def.dart';

class SkHomePage extends StatelessWidget {
  const SkHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    SkCommonDef.mStatusBarH = MediaQuery.of(context).padding.top;
     SkCommonDef.mScreenW = MediaQuery.of(context).size.width;
     SkCommonDef.mScreenH = MediaQuery.of(context).size.height;
    //
    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),
    );
    //
    return MaterialApp.router(
      routerConfig: SkRouterMgr.mGoRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: f16,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
          // ···
          // titleLarge: GoogleFonts.oswald(
          //   fontSize: 30,
          //   fontStyle: FontStyle.italic,
          // ),
          // bodyMedium: GoogleFonts.merriweather(),
          // displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      builder: FToastBuilder(),
    );
  }

  //!end class
}
