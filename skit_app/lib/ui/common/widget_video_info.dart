import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_def.dart';

// search widget

class WidgetVideoInfo extends StatefulWidget {
  const WidgetVideoInfo({super.key});

  @override
  State<WidgetVideoInfo> createState() => _WidgetVideoInfoState();
}

class _WidgetVideoInfoState extends State<WidgetVideoInfo> {
  //
  bool mInfoExpand = false;

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
                    fontSize: f16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none)),
            IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  CupertinoIcons.right_chevron,
                  color: Colors.white,
                  size: s16,
                )),
          ],
        ),
        SizedBox(
          height: b12,
        ),
        GestureDetector(
          onTap: () {
            //
            print("expand");
            // setState(() {
            //   mInfoExpand = !mInfoExpand;
            // });
          },
          child: Container(
              width: 320,
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
                            fontSize: f14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none)),
                  ),
                  SizedBox(
                    width: b12,
                  ),
                  Text('展开',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: f12,
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
