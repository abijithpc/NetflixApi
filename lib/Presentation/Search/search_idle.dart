import 'package:flutter/cupertino.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';
import 'package:netflix/Presentation/Search/widgets/top_search_title.dart';
import 'package:netflix/core/constant.dart';

const imageurl =
    'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/tCKWksaQI8XkAQLVou0AlGab5S6.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: "Top Searches"),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemsTile(),
              separatorBuilder: (context, index) => kHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}
