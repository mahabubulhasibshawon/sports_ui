import 'package:flutter/material.dart';
import 'package:sport_ui/presentation/match_details_screen/widgets/app_bar_widget.dart';
import 'package:sport_ui/presentation/match_details_screen/widgets/tab_bar_widget.dart';

import 'widgets/commentary_placeholder.dart';
import 'widgets/commentry_screen.dart';
import 'widgets/live_commentary_section.dart';
import 'widgets/scorecard_placeholder.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  int _selectedTab = 0;
  final List<String> _tabs = ['Live', 'Scorecard', 'Commentary'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(),
              TabBarWidget(
                selectedTab: _selectedTab,
                tabs: _tabs,
                onTabChanged: (index) {
                  setState(() {
                    _selectedTab = index;
                  });
                },
              ),
              if (_selectedTab == 0) const LiveCommentarySection(),
              if (_selectedTab == 1) const ScorecardPlaceholder(),
              // if (_selectedTab == 2) const CommentaryPlaceholder(),
              if (_selectedTab == 2) CricketCommentaryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
