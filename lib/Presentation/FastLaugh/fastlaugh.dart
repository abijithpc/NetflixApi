import 'package:flutter/material.dart';
import 'package:netflix/Presentation/FastLaugh/widget/videoListItem.dart';
import 'package:netflix/core/constant.dart';

class Fastlaugh extends StatelessWidget {
  const Fastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: trendingNowListNotifeir,
        builder: (context, value, _) {
          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: value.length,
            itemBuilder: (context, index) {
              var data = value[index];
              return Videolistitem(index: index, movie: data);
            },
          );
        },
      )),
    );
  }
}
