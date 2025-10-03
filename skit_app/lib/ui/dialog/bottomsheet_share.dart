import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../datalayer/sk_skit_share_chunk.dart';
import '../../frame/sk_notifier.dart';
import '../../sk_app.dart';
import '../sk_ui_def.dart';

Widget buildItemFunction(
    BuildContext context, String label, IconData iconData, String path) {
  return Padding(
    padding: EdgeInsets.only(left: 8.w, right: 8.w),
    child: IconButton(
      onPressed: () {
        //
        // GoRouter.of(context).push(path);
      },
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData),
          SizedBox(
            height: b4.w,
          ),
          Text(label)
        ],
      ),
    ),
  );
}

Widget buildShareWidget(BuildContext context) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.only(left: s12, right: s12),
      child: Container(
        // padding: EdgeInsets.only(left: s12, right: s12),
        color: Colors.transparent,
        child: Column(
          children: [
            Text("分享至"),
            Row(
              children: [
                buildItemFunction(context, 'Gems',
                    CupertinoIcons.money_dollar_circle, '/rank'),
                buildItemFunction(context, 'Gems',
                    CupertinoIcons.money_dollar_circle, '/rank'),
                buildItemFunction(context, 'Gems',
                    CupertinoIcons.money_dollar_circle, '/rank'),
                buildItemFunction(context, 'Gems',
                    CupertinoIcons.money_dollar_circle, '/rank'),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

//
Widget buildSpeedLine(BuildContext context, SkSkitShareSpeedItem item) {
  return Padding(
    padding: EdgeInsets.only(left: 8.w, right: 8.w),
    child: IconButton(
      onPressed: () {
        //
        // GoRouter.of(context).push(path);
      },
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(item.mIconData),
          Text(item.mLabel),
          Expanded(
            child: SizedBox(
              height: b4.w,
            ),
          ),
          Container(
            width: 300,
            color: Colors.white60,
          ),
          // Text(label)
        ],
      ),
    ),
  );
}

//
Widget buildHDLine(BuildContext context, SkSkitShareHDItem item) {
  return Padding(
    padding: EdgeInsets.only(left: 8.w, right: 8.w),
    child: IconButton(
      onPressed: () {
        //
        // GoRouter.of(context).push(path);
      },
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(item.mIconData),
          Text(item.mLabel),
          Expanded(
            child: SizedBox(
              height: b4.w,
            ),
          ),
          Container(
            width: 300,
            color: Colors.white60,
          ),
          // Text(label)
        ],
      ),
    ),
  );
}

//
Widget buildFontSizeLine(BuildContext context, SkSkitShareFontSizeItem item) {
  return Padding(
    padding: EdgeInsets.only(left: 8.w, right: 8.w),
    child: IconButton(
      onPressed: () {
        //
        // GoRouter.of(context).push(path);
      },
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(item.mIconData),
          Text(item.mLabel),
          Expanded(
            child: SizedBox(
              height: b4.w,
            ),
          ),
          Container(
            width: 300,
            color: Colors.white60,
          ),
          // Text(label)
        ],
      ),
    ),
  );
}

Widget buildNormalLine(BuildContext context, SkSkitShareItem shareSpeedItem) {
  return Padding(
    padding: EdgeInsets.only(left: 8.w, right: 8.w),
    child: IconButton(
      onPressed: () {
        //
        // GoRouter.of(context).push(path);
      },
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(shareSpeedItem.mIconData),
          Text(shareSpeedItem.mLabel),
          Expanded(
            child: SizedBox(
              height: b4.w,
            ),
          ),
          Container(
            width: 300,
            color: Colors.white60,
          ),
          // Text(label)
        ],
      ),
    ),
  );
}

Widget buildPlaySettingWidget(BuildContext context) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.only(left: s12, right: s12),
      child: Container(
        // color: Colors.white,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            const Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            buildSpeedLine(context, SkSkitShareSpeedItem()),
            buildHDLine(context, SkSkitShareHDItem()),
            buildNormalLine(context, SkSkitShareFullScreenItem()),
            buildFontSizeLine(context, SkSkitShareFontSizeItem()),
          ],
        ),
      ),
    ),
  );
}

Widget buildExFunctionWidget(BuildContext context) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.only(left: s12, right: s12),
      child: Container(
        // color: Colors.white,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            const Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            buildNormalLine(context, SkSkitShareTVItem()),
            buildNormalLine(context, SkSkitShareClockItem()),
            buildNormalLine(context, SkSkitShareWindowItem()),
            buildNormalLine(context, SkSkitShareFeedbackItem()),
          ],
        ),
      ),
    ),
  );
}

Widget buildSizeWidget(BuildContext context, double h) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: h,
    ),
  );
}

Future<int?> bottomSheetShare(context) async {
  //
  SkNotifier? skitSettingNotifier =
      gSkApp.mSkNotiferSys?.getSkNotifier('SkSkitSettingNotifier');
  //
  return showModalBottomSheet<int>(
    backgroundColor: Colors.white24,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 232, 232),
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
            // SliverAppBar(
            //   backgroundColor: Colors.blue,
            //   expandedHeight: 100.0,
            //   pinned: true,
            //   floating: false,
            //   snap: false,
            //   flexibleSpace: Column(
            //     // color: aa,
            //     children: [

            //     ],
            //   ),
            // ),
            buildSizeWidget(context, b12),
            buildShareWidget(context),
            buildSizeWidget(context, b12),
            buildPlaySettingWidget(context),
            buildSizeWidget(context, b12),
            buildExFunctionWidget(context),
            // SliverFixedExtentList(
            //   itemExtent: 50.0,
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         color: Colors.lightBlue[100 * (index % 9)],
            //         child: Text('list item $index'),
            //       );
            //     },
            //   ),
            // ),
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
