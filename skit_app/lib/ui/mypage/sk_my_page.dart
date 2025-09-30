import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skit_app/notifiers/sk_login_notifier.dart';
import 'package:skit_app/sk_app.dart';
import '../../frame/sk_notifier.dart';
import '../common/widget_function_bar.dart';
import '../common/widget_unlogin.dart';
import '../common/widget_user_info.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';
import 'package:provider/provider.dart';

class SkMyPage extends StatefulWidget {
  const SkMyPage({super.key});

  @override
  State<SkMyPage> createState() => _SkMyPageState();
}

class _SkMyPageState extends State<SkMyPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  List<String> mTabs = ['历史', '收藏', '点赞', '动态'];
  final double mToolsBarH = 20;
  double mHeadBgH = 0;
  //
  bool mIsLogin = false;
  //
  bool mShowBanner = false;

  @override
  Widget build(BuildContext context) {
    //
    // 100 info height
    // 80 function height
    // 16 border with userinfo to functionbar
    // 40 bottom distance
    //
    // mIsLogin =  gSkApp.mSkNotiferSys!.getSkNotifier('SkLoginNotifier')
    SkNotifier? loginNotifier =
        gSkApp.mSkNotiferSys?.getSkNotifier('SkLoginNotifier');
    if (loginNotifier != null && loginNotifier is SkLoginNotifier) {
      mIsLogin = loginNotifier.mIsLogin;
    }

    mHeadBgH = SkCommonDef.mStatusBarH +
        mToolsBarH +
        WidgetUserInfo.innerHeight.w +
        WidgetFunctionBar.innerHeight.w +
        16.w +
        40.w;
    //
    // ChangeNotifierProvider()
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: loginNotifier),
      ],
      child: DefaultTabController(
        length: 4,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: false,
                  collapsedHeight:
                      SkCommonDef.mStatusBarH + mToolsBarH.w + s12.w,
                  expandedHeight: mHeadBgH,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                        color: Colors.blueGrey,
                        width: SkCommonDef.mScreenW,
                        height: mHeadBgH,
                        child: Stack(
                          children: [
                            Container(
                                width: SkCommonDef.mScreenW,
                                height: mHeadBgH,
                                color: const Color.fromARGB(255, 10, 228, 79)),
                            Positioned(
                                top: SkCommonDef.mStatusBarH +
                                    mToolsBarH.w +
                                    16.w,
                                child: buildHeadWidget(context)),
                            Positioned(
                                top: SkCommonDef.mStatusBarH +
                                    mToolsBarH.w +
                                    16.w,
                                child: buildHeaderBanner(context)),
                            Positioned(
                                top: SkCommonDef.mStatusBarH +
                                    mToolsBarH.w +
                                    WidgetUserInfo.innerHeight +
                                    16.w,
                                child: WidgetFunctionBar()),
                          ],
                        )),
                  ),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(60.w),
                      child: TabBar(
                          tabs: mTabs
                              .map((String name) => Tab(text: name))
                              .toList())),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      // color: Colors.blue[200 + top[index] % 4 * 100],
                      // height: 100 + top[index] % 4 * 20.0,
                      child: Text('Item1'),
                    );
                  }, childCount: 40),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      // color: Colors.blue[200 + bottom[index] % 4 * 100],
                      // height: 100 + bottom[index] % 4 * 20.0,
                      child: Text('Item2'),
                    );
                  }, childCount: 40),
                ),
              ],
            ),
            Positioned(
                top: SkCommonDef.mStatusBarH,
                right: 0,
                child: buildHeaderTools(context)),
          ],
        ),
      ),
    );
  }

  Widget buildHeadWidget(BuildContext context) {
    if (mIsLogin == false) return WidgetUnlogin();
    return WidgetUserInfo();
  }

  Widget buildHeaderTools(BuildContext context) {
    return Container(
      // width: 100,
      // height: 100,
      color: Colors.red,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                //
                GoRouter.of(context).push('/setting');
              },
              icon: Icon(
                CupertinoIcons.gear,
                color: Colors.white,
                size: s16,
              )),
        ],
      ),
    );
  }

  Widget buildHeaderBanner(BuildContext context) {
    if (mShowBanner) {
      return Container(
        // width: 100,
        // height: 100,
        color: Colors.red,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  //
                  GoRouter.of(context).push('/setting');
                },
                icon: Icon(
                  CupertinoIcons.gear,
                  color: Colors.white,
                  size: s16,
                )),
          ],
        ),
      );
    }
    return SizedBox();
  }

  //!end class
}
