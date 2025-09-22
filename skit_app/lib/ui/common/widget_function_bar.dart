import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// userinfo widget

class WidgetFunctionBar extends StatefulWidget {
  const WidgetFunctionBar({super.key});

  static final double innerHeight = 80;

  @override
  State<WidgetFunctionBar> createState() => _WidgetFunctionBarState();
}

class _WidgetFunctionBarState extends State<WidgetFunctionBar> {
  Color mStarColor = Colors.white;
  Color mChatColor = Colors.white;
  Color mHeartColor = Colors.white;
  bool mStarFlag = false;
  bool mHeartFlag = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(104, 65, 11, 202),
        width: SkCommonDef.mScreenW,
        height: WidgetFunctionBar.innerHeight,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildItemFunction(
                context, 'Gems', CupertinoIcons.money_dollar_circle, '/rank'),
            buildItemFunction(
                context, 'Bill', CupertinoIcons.doc_text, '/rank'),
            buildItemFunction(context, 'Msg', CupertinoIcons.envelope, '/rank'),
            buildItemFunction(
                context, 'Member', CupertinoIcons.person_2, '/rank'),
            buildItemFunction(
                context, 'Wallet', CupertinoIcons.creditcard, '/rank'),
            buildItemFunction(context, 'Coin', CupertinoIcons.bitcoin, '/rank'),
            buildItemFunction(context, 'Record', CupertinoIcons.film, '/rank'),
            buildItemFunction(
                context, 'Cache', CupertinoIcons.cloud_download, '/rank'),
            buildItemFunction(
                context, 'Service', CupertinoIcons.question_circle, '/rank'),
            buildItemFunction(
                context, 'Feedback', CupertinoIcons.captions_bubble, '/rank'),
          ],
        ));
  }

  Widget buildItemFunction(
      BuildContext context, String label, IconData iconData, String path) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: IconButton(
        onPressed: () {
          //
          GoRouter.of(context).push(path);
        },
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData),
            SizedBox(
              height: b4,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }

  //!end class
}
