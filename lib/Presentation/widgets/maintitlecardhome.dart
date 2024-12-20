import 'package:flutter/material.dart';
import 'package:netflix/Presentation/widgets/main_card.dart';
import 'package:netflix/Presentation/widgets/main_title.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/models/models.dart';

class MainTitleCardHome extends StatelessWidget {
  const MainTitleCardHome(
      {super.key, required this.title, required this.listNotifier});
  final String title;
  final ValueNotifier<List<Movie>> listNotifier;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
            maxHeight: 200,
            child: ValueListenableBuilder(
              valueListenable: listNotifier,
              builder: (context, value, _) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var data = value[index];
                    return MainHomeScreenCard(
                      movie: data,
                    );
                  },
                );
              },
            ))
      ],
    );
  }
}
