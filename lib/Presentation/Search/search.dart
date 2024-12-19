import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/widgets/searchresult.dart';
import 'package:netflix/core/constant.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.4),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: const TextStyle(color: Colors.white),
          ),
          kHeight,
          Expanded(child: SearchresultWidget())
        ],
      ),
    ));
  }
}
