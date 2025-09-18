import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../base/router/sk_router_mgr.dart';

class SkHomePage extends StatelessWidget {
  const SkHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    //
    return MaterialApp.router(
      routerConfig: SkRouterMgr.mGoRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
