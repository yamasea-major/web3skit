import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skit_app/ui/sk_ui_def.dart';

class SkSettingPage extends StatefulWidget {
  const SkSettingPage({super.key});

  @override
  State<SkSettingPage> createState() => _SkSettingPageState();
}

class _SkSettingPageState extends State<SkSettingPage> {
  //

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // color: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SETTING'),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.search),
        //     onPressed: () {
        //       // Handle search button press
        //     },
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.more_vert),
        //     onPressed: () {
        //       // Handle more options button press
        //     },
        //   ),
        // ],
        backgroundColor: Colors.white,
        elevation: 4.0,
      ),
      body: Center(
        // color: Colors.amber,
        child: IconButton(
            icon: Icon(
              CupertinoIcons.back,
              size: s32,
            ),
            onPressed: () {
              GoRouter.of(context).pop();
            }),
      ),
// leadi
    );
  }

  //!end class
}
