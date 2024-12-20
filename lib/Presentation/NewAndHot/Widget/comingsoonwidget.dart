import 'package:flutter/material.dart';
import 'package:netflix/Presentation/HomePage/widget/maincustombutton.dart';
import 'package:netflix/Presentation/widgets/video_widget.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/models/models.dart';
import 'package:intl/intl.dart';

class ComingSoonWidget extends StatelessWidget {
  ComingSoonWidget({
    super.key, required this.movie,
  });
  final Movie movie;
  final DateFormat monthFormatter = DateFormat('MMM');
  final DateFormat dayFormatter = DateFormat('dd');
  final DateFormat dayFormatterDay = DateFormat('EEEE');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
         SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Text(
                monthFormatter.format(DateTime.parse(movie.releaseDate!)).toUpperCase(),
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
               Text(
                dayFormatter.format(DateTime.parse(movie.releaseDate!)),
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(image: movie.posterPath,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width-170,
                    height: 50,
                    child: Text(
                      '${movie.title}',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: -4,
                        overflow: TextOverflow.fade
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      MainCustomButton(
                        icon: Icons.alarm,
                        title: 'Remind me',
                        iconsize: 15,
                        fontsize: 12,
                      ),
                      kwidth,
                      MainCustomButton(
                        icon: Icons.info,
                        title: 'Info',
                        iconsize: 15,
                        fontsize: 12,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kHeight,
              Text('Coming on ${dayFormatterDay.format(DateTime.parse(movie.releaseDate!))}'),
              kHeight,
              Text(
                '${movie.title}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                '${movie.overview}',
                style: TextStyle(color: Colors.grey,overflow: TextOverflow.fade),
              )
            ],
          ),
        ),
      ],
    );
  }
}

const newandhottempimg =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/Aa9TLpNpBMyRkD8sPJ7ACKLjt0l.jpg';

