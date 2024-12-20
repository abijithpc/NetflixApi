import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/Api/api.dart';
import 'package:netflix/Presentation/HomePage/widget/main-bg-card.dart';
import 'package:netflix/Presentation/HomePage/widget/numbertitlecard.dart';
import 'package:netflix/Presentation/widgets/maintitlecardhome.dart';
import 'package:netflix/core/constant.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 0;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  fetchData() async {
    trendingNowListNotifeir.value = await Api().getTrendingMovies();
    topRatedListNotifier.value = await Api().getTopRated();
    upcomingListNotifier.value = await Api().getUpComing();
    top10TvShowsInIndiaTodayListNotifier.value =
        await Api().getTop10TvShowsInIndiaToday();
    final random = Random();
    randomIndex = random.nextInt(10);
  }

  @override
  Widget build(BuildContext context) {
    fetchData();
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
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
                children: [
                  FutureBuilder(
                    future: Api().getTrendingMovies(),
                    builder: (context, snapshot) => snapshot.hasData
                        ? MainBackgroundcard(
                            image: snapshot.data![randomIndex].posterPath,
                          )
                        : const SizedBox(
                            height: 700,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                  ),
                  kHeight,
                  MainTitleCardHome(
                    listNotifier: trendingNowListNotifeir,
                    title: "Released in the past year",
                  ),
                  kHeight,
                  MainTitleCardHome(
                    listNotifier: topRatedListNotifier,
                    title: "Trending Now",
                  ),
                  kHeight,
                  NumberTtitleCard(),
                  kHeight,
                  MainTitleCardHome(
                    listNotifier: upcomingListNotifier,
                    title: "Tense Dramas",
                  ),
                  kHeight,
                  MainTitleCardHome(
                    listNotifier: topRatedListNotifier,
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
