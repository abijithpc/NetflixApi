import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/search_idle.dart';
import 'package:netflix/core/colors/colors.dart';

class TopSearchItemsTile extends StatelessWidget {
  const TopSearchItemsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        const Expanded(
            child: Text(
          "Movie Name",
          style: TextStyle(
              color: kWhiteColors, fontSize: 16, fontWeight: FontWeight.bold),
        )),
        Icon(
          CupertinoIcons.play_circle,
          size: 45,
          color: kWhiteColors,
        )
      ],
    );
  }
}