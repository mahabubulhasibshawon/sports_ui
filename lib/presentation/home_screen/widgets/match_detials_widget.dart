import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sport_ui/assets.dart';

class MatchDetialsWidget extends StatelessWidget {
  const MatchDetialsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return CarouselSlider(
      options: CarouselOptions(height: height * .25),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return   Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: height * .3,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 5,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('BANGLADESH TOUR OF INDIA', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('1ST ODI, AT HYDERBAD', style: TextStyle(fontSize: 14, color: Colors.grey),),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red
                          ),
                          child: Text('LIVE'),
                        ),
                        Image.asset(Assets.notification, scale: 20, color: Colors.white70,)
                      ],
                    ),
                    Divider(),
                    _scoreCard(Assets.bd, 'BANGLADESH', '352/9',''),
                    _scoreCard(Assets.ind, 'INDIA', '243/2','(42.5/50 OV)'),
                    Text('INDIA NEED 110 RUNS', style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );

    //   Container(
    //   height: height * .4,
    //   decoration: BoxDecoration(
    //     color: Colors.grey.shade900,
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    // );
  }
}


Widget _scoreCard(String flag, String teamName, String score, String ov) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      spacing: 5,
      children: [
        Image.asset(flag, height: 30, width: 40,),
        Text(teamName),
        Spacer(),
        Text(score),
        Text(ov, style: TextStyle(fontSize: 12, color: Colors.grey),)
      ],
    ),
  );
}