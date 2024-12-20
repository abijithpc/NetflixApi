import 'package:flutter/material.dart';
import 'package:netflix/Presentation/HomePage/widget/numbercard.dart';
import 'package:netflix/Presentation/widgets/main_title.dart';
import 'package:netflix/core/constant.dart';

class NumberTtitleCard extends StatelessWidget {
  const NumberTtitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv Shows in India Today"),
        kHeight,
        LimitedBox(
            maxHeight: 200,
            child: ValueListenableBuilder(
              valueListenable: top10TvShowsInIndiaTodayListNotifier,
              builder: (context, value, _) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      top10TvShowsInIndiaTodayListNotifier.value.isNotEmpty
                          ? 10
                          : top10TvShowsInIndiaTodayListNotifier.value.length,
                  itemBuilder: (context, index) {
                    var data = value[index];
                    return Numbercard(
                      index: index + 1,
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
