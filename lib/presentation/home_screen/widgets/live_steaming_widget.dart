import 'package:flutter/material.dart';

class LiveSteamingWidget extends StatelessWidget {
  LiveSteamingWidget({super.key});

  final List<String> images = [
    "assets/bd_vs_nz.jpg",
    "assets/aus_vs_eng.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context , index) => _matchCard(images, index)),
    );
  }
}

Widget _matchCard (List images, int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    height: 200,
    width: 300,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(images[index], fit: BoxFit.cover,),
    ),
  );
}