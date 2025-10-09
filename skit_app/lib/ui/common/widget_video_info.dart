import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../datalayer/sk_skit_data_chunk.dart';
import '../../notifiers/sk_skit_info_notifier.dart';
import '../sk_ui_def.dart';

//

class WidgetVideoInfo extends StatefulWidget {
  late SkSkitDataChunk? mDataChunk;
  WidgetVideoInfo({super.key, required SkSkitDataChunk? data}) {
    mDataChunk = data;
  }

  @override
  State<WidgetVideoInfo> createState() => _WidgetVideoInfoState();
}

class _WidgetVideoInfoState extends State<WidgetVideoInfo> {
  //
  bool mInfoExpand = false;

  late SkSkitInfoNotifier notifier;

  // late SkSkitInfoNotifier mInfoNotifier;

  @override
  void initState() {
    super.initState();
    notifier = SkSkitInfoNotifier();
    notifier.initInfo(widget.mDataChunk!);
  }

  @override
  Widget build(BuildContext context) {
    String tmpVideoInfo =
        "Metadata2Go.com is a free online tool that allows you to access the hidden exif &amp; meta data of your files.Just drag & drop or upload an image, document, video, audio or even e-book file. We will show you all metadata hidden inside the file!No matter if image metadata, document information or video exif – we check your file for you";
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('花轿临门拒嫁，只盼故人归',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: f16.w,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none)),
            IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  CupertinoIcons.right_chevron,
                  color: Colors.white,
                  size: s16.w,
                )),
          ],
        ),
        SizedBox(
          height: b12.w,
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            //
            print("expand");
            // setState(() {
            //   mInfoExpand = !mInfoExpand;
            // });
          },
          child: Container(
              width: 280.w,
              // color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Text(tmpVideoInfo,
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: f14.w,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none)),
                  ),
                  SizedBox(
                    width: b12.w,
                  ),
                  Text('展开',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: f12.w,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none))
                ],
              )),
        ),
      ],
    );
  }

  //!end class
}
