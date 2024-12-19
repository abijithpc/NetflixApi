import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/Presentation/NewAndHot/newandhot.dart';
import 'package:netflix/Presentation/widgets/appbarwidget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

class Downloads extends StatelessWidget {
  Downloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Appbarwidget(
            title: "Download",
          )),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(
          height: 25,
        ),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    "https://media.themoviedb.org/t/p/w220_and_h330_face/sjMN7DRi4sGiledsmllEw5HJjPy.jpg",
    "https://media.themoviedb.org/t/p/w220_and_h330_face/aosm8NMQ3UyoBVpSxyimorCQykC.jpg",
    "https://media.themoviedb.org/t/p/w220_and_h330_face/s4QRRYc1V2e68Qy9Wel9MI8fhRP.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColors, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "Well will download a personalized selection of \n movies and shoes for you, so there's \n always something to watch on your \n device",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[800],
                radius: size.width * 0.4,
              ),
              downloadsImageWidget(
                  margin: EdgeInsets.only(
                    left: 170,
                    top: 50,
                  ),
                  angle: 25,
                  size: Size(size.width * 0.35, size.width * 0.55),
                  imageList: imageList[0]),
              downloadsImageWidget(
                  margin: EdgeInsets.only(right: 170, top: 50),
                  angle: -20,
                  size: Size(size.width * 0.35, size.width * 0.55),
                  imageList: imageList[1]),
              downloadsImageWidget(
                margin: EdgeInsets.only(bottom: 35, top: 50),
                size: Size(size.width * 0.4, size.width * 0.6),
                imageList: imageList[2],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kButtonColorBlue,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewAndHot(),
                )),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Setup",
                style: TextStyle(color: kWhiteColors, fontSize: 20),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kWhiteColors,
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewAndHot(),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(color: kBlackColors, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        kwidth,
        Text("Smart Download")
      ],
    );
  }
}

class downloadsImageWidget extends StatelessWidget {
  const downloadsImageWidget(
      {super.key,
      this.angle = 0,
      required this.margin,
      required this.imageList,
      this.borderRadius = 10,
      required this.size});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 160,
        child: ClipRRect(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageList))),
          ),
        ),
      ),
    );
  }
}
