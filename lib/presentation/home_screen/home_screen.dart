import 'package:flutter/material.dart';
import 'package:sport_ui/assets.dart';
import 'package:sport_ui/presentation/home_screen/widgets/live_steaming_widget.dart';
import 'package:sport_ui/presentation/home_screen/widgets/match_detials_widget.dart';
import 'package:sport_ui/presentation/home_screen/widgets/matches_widget.dart';
import 'package:sport_ui/presentation/home_screen/widgets/news_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Icon(Icons.search, color: Colors.blue,)
                ],),
              ),
              // matches widget
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MatchesWidget(),
              ),
              // matches see all
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Matches', style : TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    Row(
                      spacing: 5,
                        children: [
                      Text('See all', style: TextStyle(color: Colors.blue),),
                      Icon(Icons.keyboard_arrow_right, color: Colors.blue,)
                    ],)
                  ],
                ),
              ),
              // match details widget
              MatchDetialsWidget(),
              // live streaming headline
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 5,
                      children: [
                        Image.asset(Assets.red_live, scale: 20, color: Colors.red,),
                        Text('Live Streaming', style : TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                      ],
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Text('See all', style: TextStyle(color: Colors.blue),),
                        Icon(Icons.keyboard_arrow_right, color: Colors.blue,)
                      ],)
                  ],
                ),
              ),
              LiveSteamingWidget(),
              NewsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
