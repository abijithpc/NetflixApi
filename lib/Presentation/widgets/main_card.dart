import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class MainHomeScreenCard extends StatelessWidget {
  const MainHomeScreenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://media.themoviedb.org/t/p/w220_and_h330_face/sjMN7DRi4sGiledsmllEw5HJjPy.jpg",
              ))),
    );
  }
}
