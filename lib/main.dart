import 'package:flutter/material.dart';
import 'package:sport_ui/presentation/home_screen/home_screen.dart';
import 'package:sport_ui/presentation/live_matches_list_screen/live_matches_list_screen.dart';
import 'package:sport_ui/presentation/match_details_screen/match_details_screen.dart';
import 'package:sport_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: MatchDetailsScreen(),
    );
  }
}
