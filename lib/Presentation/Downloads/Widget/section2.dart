import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Downloads/Widget/downloadimagewidget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

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
