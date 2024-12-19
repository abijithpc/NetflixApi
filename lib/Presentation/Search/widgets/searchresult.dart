import 'package:flutter/cupertino.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';
import 'package:netflix/core/constant.dart';

const imageurl =
    "https://media.themoviedb.org/t/p/w533_and_h300_bestv2/ay8uvMrQNQcChIDMyfw60eAziQv.jpg";

class SearchresultWidget extends StatelessWidget {
  const SearchresultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: "Movies & Tv"),
        kHeight,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          shrinkWrap: true,
          children: List.generate(
            20,
            (index) {
              return const MainCard();
            },
          ),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(imageurl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
