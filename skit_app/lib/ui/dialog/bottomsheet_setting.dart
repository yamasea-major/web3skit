import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../frame/sk_notifier.dart';
import '../../sk_app.dart';
import '../sk_ui_def.dart';

Widget buildShareWidget(BuildContext context) {
  return SizedBox();
}

Widget buildPlaySettingWidget(BuildContext context) {
  return SizedBox();
}

Widget buildExFunctionWidget(BuildContext context) {
  return SizedBox();
}

Future<int?> bottomSheetSetting(context) async {
  //
  SkNotifier? skitSettingNotifier =
      gSkApp.mSkNotiferSys?.getSkNotifier('SkSkitSettingNotifier');
  //
  return showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.75,
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: skitSettingNotifier),
          ],
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue,
              expandedHeight: 100.0,
              pinned: true,
              floating: false,
              snap: false,
              flexibleSpace: Column(
                // color: aa,
                children: [
                  buildShareWidget(context),
                  buildPlaySettingWidget(context),
                  buildExFunctionWidget(context),
                ],
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('list item $index'),
                  );
                },
              ),
            ),
          ]),
          // Divider(height: 1.0),
          //     Expanded(
          //   child: ListView.builder(
          //     itemBuilder: (BuildContext context, int index) {
          //       return ListTile(
          //           title: Text(mSpeedItem[index]),
          //           onTap: () {
          //             Navigator.of(context).pop(index);
          //           });
          //     },
          //     itemCount: mSpeedItem.length,
          //   ),
          // ),
        ),
      );
    },
  );

  // end function
}
