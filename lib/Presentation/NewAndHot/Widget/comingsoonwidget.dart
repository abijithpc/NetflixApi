import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/Presentation/HomePage/widget/maincustombutton.dart';
import 'package:netflix/Presentation/widgets/video_widget.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "FEB",
                style: TextStyle(fontSize: 20, color: kGreyColor),
              ),
              Text(
                "11",
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              videoWidget(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      "Tall Girl 2",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        MainCustomButton(
                            iconsize: 20,
                            fontsize: 16,
                            icon: FontAwesomeIcons.bell,
                            title: "Remind Me"),
                        kwidth,
                        MainCustomButton(
                            iconsize: 20,
                            fontsize: 16,
                            icon: Icons.info_outline_rounded,
                            title: "Info")
                      ],
                    )
                  ],
                ),
              ),
              const Text("Coming On Firday"),
              kHeight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                "Landing the lead in the School musical is a dream come true for jodi, until the pressure sends her confidence-and her relationship-into a tailspin ",
                style: TextStyle(color: kGreyColor, fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }
}

