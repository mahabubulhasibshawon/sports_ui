import 'package:flutter/material.dart';
import 'package:sport_ui/assets.dart';

import 'carousel_slider_widget.dart';

class MatchesWidget extends StatelessWidget {
  const MatchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * .4,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10 , top: 20, right: 10),
            height: height * .25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: CarouselSlider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _streamingBtn(context, Assets.live, 'Live', height, width),
                _streamingBtn(context, Assets.cricket, 'Live', height, width),
                _streamingBtn(context, Assets.ball, 'Live', height, width),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _streamingBtn(
  BuildContext context,
  String icon,
  String txt,
  double height,
  double width,
) {
  return GestureDetector(
    onTap: (){ },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: height * .1,
      width: width * .27,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, scale: 30, color: Colors.white),
          Text(txt, style: TextStyle(color: Colors.white70)),
        ],
      ),
    ),
  );
}
