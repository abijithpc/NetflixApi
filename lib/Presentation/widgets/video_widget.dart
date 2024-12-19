import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class videoWidget extends StatelessWidget {
  const videoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(fit: BoxFit.cover, newAndHotImage),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_up,
                  color: Colors.white,
                  size: 20,
                )),
          ),
        ),
      ],
    );
  }
}
