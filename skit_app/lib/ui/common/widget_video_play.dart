import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_def.dart';

class WidgetVideoPlay extends StatefulWidget {
  const WidgetVideoPlay({super.key});

  @override
  State<WidgetVideoPlay> createState() => _WidgetVideoPlayState();
}

class _WidgetVideoPlayState extends State<WidgetVideoPlay> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildVideoWidget(),
        //
        // buildControlWidget(),
        //
        buildVideoInfoWidget(),
        //
        buildSocialInfoWidget(),
      ],
    );

    // @override
    // void dispose() {
    //   super.dispose();
    //   var a = 1;
    // }

    //!end class
  }

  Widget buildVideoWidget() {
    return Container(
        color: Colors.blue, // 设置背景颜色为蓝色
        width: double.infinity,
        height: double.infinity,
        child: Center(
          // padding: EdgeInsets.all(10.0),
          // margin: EdgeInsets.all(10.0),
          child: Text(
            'background with color',
            style: TextStyle(
                color: Colors.green,
                fontSize: f16,
                decoration: TextDecoration.none),
          ),
        ));
  }

  Widget buildControlWidget() {
    return Positioned(
      right: 10.0,
      bottom: 100.0,
      child: Column(
        children: [
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('13.6M',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f12,
                  decoration: TextDecoration.none)),
          SizedBox(
            height: b12,
          ),
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('85', style: TextStyle(color: Colors.white, fontSize: f12)),
          SizedBox(
            height: b12,
          ),
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('3821',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: f12,
                  decoration: TextDecoration.none)),
        ],
      ),
    );
  }

  Widget buildVideoInfoWidget() {
    String tmpVideoInfo =
        "Metadata2Go.com is a free online tool that allows you to access the hidden exif &amp; meta data of your files.Just drag & drop or upload an image, document, video, audio or even e-book file. We will show you all metadata hidden inside the file!No matter if image metadata, document information or video exif – we check your file for you";
    return Positioned(
      left: 10.0,
      bottom: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('sdfdfeexxcdfdfe',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: f12,
                      decoration: TextDecoration.none)),
              IconButton.filled(
                  onPressed: () {
                    //
                  },
                  icon: Icon(CupertinoIcons.home)),
            ],
          ),
          SizedBox(
            height: b12,
          ),
          GestureDetector(
            onTap: () {
              //
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
                              fontSize: f12,
                              decoration: TextDecoration.none)),
                    ),
                    SizedBox(
                      width: b12,
                    ),
                    Text('Expand',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: f12,
                            decoration: TextDecoration.none))
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget buildSocialInfoWidget() {
    return Positioned(
      right: 10.0,
      bottom: 100.0,
      child: Column(
        children: [
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('13.6M', style: TextStyle(color: Colors.white, fontSize: f12)),
          SizedBox(
            height: b12,
          ),
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('85', style: TextStyle(color: Colors.white, fontSize: f12)),
          SizedBox(
            height: b12,
          ),
          IconButton.filled(
              onPressed: () {
                //
              },
              icon: Icon(CupertinoIcons.home)),
          Text('3821', style: TextStyle(color: Colors.white, fontSize: f12)),
        ],
      ),
    );
  }

  //!end class
}
