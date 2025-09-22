import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// userinfo widget

class WidgetFunctionBar extends StatefulWidget {
  const WidgetFunctionBar({super.key});

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
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildItemFunction('Gems', Icons.add),
            buildItemFunction('Bill', Icons.add),
            buildItemFunction('Msg', Icons.add),
            buildItemFunction('Member', Icons.add),
            buildItemFunction('Wallet', Icons.add),
            buildItemFunction('Wallet1', Icons.add),
            buildItemFunction('Wallet2', Icons.add),
            buildItemFunction('Wallet3', Icons.add),
            buildItemFunction('Wallet4', Icons.add),
            buildItemFunction('Wallet5', Icons.add),
            buildItemFunction('Wallet6', Icons.add),
            buildItemFunction('Wallet7', Icons.add),
          ],
        ));
  }

  Widget buildItemFunction(String label, IconData iconData) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: IconButton(
        onPressed: () {
          //
        },
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData),
            SizedBox(
              height: b8,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }

  //!end class
}
