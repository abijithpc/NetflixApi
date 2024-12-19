import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Presentation/NewAndHot/Widget/comingsoonwidget.dart';
import 'package:netflix/Presentation/NewAndHot/Widget/everyonesWatchingwidget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            actions: [
              const Icon(
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
            bottom: TabBar(
              labelColor: kBlackColors,
              unselectedLabelColor: kWhiteColors,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: kWhiteColors,
                borderRadius: kRadius30,
                // Adjust height and width using constraints
                shape: BoxShape.rectangle,
              ),
              indicatorSize: TabBarIndicatorSize.tab, // Matches tab size
              tabs: const [
                Tab(text: "🍿 Coming Soon"),
                Tab(text: "👀 Everyone's Watching"),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryOnesWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ComingSoonWidget(),
    );
  }

  Widget _buildEveryOnesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const everyoneWatchingWidget(),
    );
  }
}
