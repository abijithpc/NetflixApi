import 'package:flutter/material.dart';
import 'package:netflix/Presentation/widgets/main_card.dart';
import 'package:netflix/Presentation/widgets/main_title.dart';
import 'package:netflix/core/constant.dart';

class MainTitleCardHome extends StatelessWidget {
  const MainTitleCardHome({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainHomeScreenCard(),
            ),
          ),
        )
      ],
    );
  }
}
