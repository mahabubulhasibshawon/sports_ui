// lib/widgets/matches_tab_bar.dart
import 'package:flutter/material.dart';

class MatchesTabBar extends StatelessWidget {
  final TabController tabController;
  final List<String> tabs;

  const MatchesTabBar({
    Key? key,
    required this.tabController,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios_sharp),
      title: Text('Matches'),
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30,), color: Colors.blue,)],
      bottom: TabBar(
        controller: tabController,
        labelColor: Colors.green,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.green,
        indicatorWeight: 3.0,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        tabs: tabs.map((tab) => Tab(text: tab)).toList(),
      ),
    );
  }
}