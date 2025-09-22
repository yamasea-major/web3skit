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
    return Container(
      color: Colors.amber,
      child: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            size: s32,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          }), // leadi
    );
  }

  //!end class
}
