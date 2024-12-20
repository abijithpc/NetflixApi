import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Downloads/downloads.dart';
import 'package:netflix/Presentation/FastLaugh/fastlaugh.dart';
import 'package:netflix/Presentation/HomePage/homepage.dart';
import 'package:netflix/Presentation/Main(bottomNav)/widget/bottomnavwidget.dart';
import 'package:netflix/Presentation/NewAndHot/newandhot.dart';
import 'package:netflix/Presentation/Search/search.dart';

class Bottomnav extends StatelessWidget {
  Bottomnav({super.key});

  final _pages = [
    Homepage(),
    ScreenNewAndHot(),
    Fastlaugh(),
    Search(),
    Downloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangerNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: Bottomnavwidget(),
    );
  }
}
