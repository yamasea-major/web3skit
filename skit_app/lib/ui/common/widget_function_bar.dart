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
            buildItemFunction(context, 'Gems', Icons.add, '/rank'),
            buildItemFunction(context, 'Bill', Icons.add, '/rank'),
            buildItemFunction(context, 'Msg', Icons.add, '/rank'),
            buildItemFunction(context, 'Member', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet1', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet2', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet3', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet4', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet5', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet6', Icons.add, '/rank'),
            buildItemFunction(context, 'Wallet7', Icons.add, '/rank'),
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
