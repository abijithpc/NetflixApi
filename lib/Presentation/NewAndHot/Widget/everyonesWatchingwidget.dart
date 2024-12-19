import 'package:flutter/material.dart';
import 'package:netflix/Presentation/HomePage/widget/maincustombutton.dart';
import 'package:netflix/Presentation/widgets/video_widget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

class everyoneWatchingWidget extends StatelessWidget {
  const everyoneWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        kHeight,
        Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(
          "This sitcom follows the misadventure of six 20-something pals as they navigate the pitfall of work, life and love in 1990s manhattan",
          style: TextStyle(color: kGreyColor, fontSize: 15),
        ),
        kHeight50,
        videoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainCustomButton(
                iconsize: 25, fontsize: 16, icon: Icons.share, title: "Share"),
            kwidth,
            MainCustomButton(
                iconsize: 20, fontsize: 16, icon: Icons.add, title: "My List"),
            kwidth,
            MainCustomButton(
                iconsize: 25,
                fontsize: 16,
                icon: Icons.play_arrow,
                title: "Play"),
            kwidth,
          ],
        )
      ],
    );
  }
}
