import 'package:flutter/material.dart';
import 'package:netflix/Presentation/FastLaugh/widget/videoListItem.dart';

class Fastlaugh extends StatelessWidget {
  const Fastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return Videolistitem(
            index: index,
          );
        }),
      )),
    );
  }
}
