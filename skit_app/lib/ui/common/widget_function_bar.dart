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
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Gems')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Bill')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Msg')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Member')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Wallet')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Wallet1')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Wallet2')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Wallet3')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Wallet4')
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                //
              },
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    height: b8,
                  ),
                  Text('Wallet5')
                ],
              ),
            ),
          ],
        ));
  }

  //!end class
}
