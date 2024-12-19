import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/Presentation/HomePage/widget/main-bg-card.dart';
import 'package:netflix/Presentation/HomePage/widget/numbertitlecard.dart';
import 'package:netflix/Presentation/widgets/maintitlecardhome.dart';
import 'package:netflix/core/constant.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  MainBackgroundcard(),
                  kHeight,
                  MainTitleCardHome(
                    title: "Released in the past year",
                  ),
                  kHeight,
                  MainTitleCardHome(
                    title: "Trending Now",
                  ),
                  kHeight,
                  NumberTtitleCard(),
                  kHeight,
                  MainTitleCardHome(
                    title: "Tense Dramas",
                  ),
                  kHeight,
                  MainTitleCardHome(
                    title: "South Indian Cinema",
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                                width: 40,
                                height: 40,
                              ),
                              Spacer(),
                              Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 30,
                              ),
                              kwidth,
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                              kwidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Tv Shows",
                                style: kHomeTitletext,
                              ),
                              Text(
                                "Movies",
                                style: kHomeTitletext,
                              ),
                              Text(
                                "Categories",
                                style: kHomeTitletext,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight
            ],
          ),
        );
      },
    ));
  }
}
