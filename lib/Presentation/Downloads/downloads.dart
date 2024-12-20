import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/Api/api.dart';
import 'package:netflix/Presentation/Downloads/Widget/section2.dart';
import 'package:netflix/Presentation/Downloads/Widget/section3.dart';
import 'package:netflix/Presentation/Downloads/Widget/smartdownload.dart';
import 'package:netflix/Presentation/widgets/appbarwidget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

class Downloads extends StatelessWidget {
  Downloads({super.key});

  final _WidgetList = [
    const SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Appbarwidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _WidgetList[index],
            separatorBuilder: (ctx, index) => SizedBox(
                  height: 25,
                ),
            itemCount: _WidgetList.length));
  }
}






