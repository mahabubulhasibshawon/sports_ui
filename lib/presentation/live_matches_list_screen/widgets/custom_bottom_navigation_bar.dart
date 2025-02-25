// lib/widgets/custom_bottom_navigation_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.3),
            width: 1.0,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_outlined),
            label: 'Series',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi),
            label: 'Stream',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}