// lib/screens/matches_screen.dart
import 'package:flutter/material.dart';
import 'widgets/custom_bottom_navigation_bar.dart';
import 'widgets/match_filters.dart';
import 'widgets/matches_list_view.dart';
import 'widgets/matches_tab_bar.dart' show MatchesTabBar;
import 'widgets/section_header.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;
  int _selectedFilterIndex = 0;

  final List<String> _tabs = ['Live', 'Upcoming', 'Results'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 46),
        child: MatchesTabBar(
          tabController: _tabController,
          tabs: _tabs,
        ),
      ),
      body: Column(
        children: [
          MatchFilters(
            onFilterSelected: (index) {
              setState(() {
                _selectedFilterIndex = index;
              });
            },
            selectedFilterIndex: _selectedFilterIndex,
          ),
          SectionHeader(filterIndex: _selectedFilterIndex),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Live Matches Tab
                MatchesListView(filterIndex: _selectedFilterIndex),
                // Upcoming Tab
                Container(child: const Center(child: Text('Upcoming Matches'))),
                // Results Tab
                Container(child: const Center(child: Text('Match Results'))),
              ],
            ),
          ),
          const CustomBottomNavigationBar(currentIndex: 1),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:sport_ui/assets.dart';
//
// void main() {
//   runApp(const CricketApp());
// }
//
// class CricketApp extends StatelessWidget {
//   const CricketApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.green,
//         // scaffoldBackgroundColor: Colors.white,
//       ),
//       home: const MatchesScreen(),
//     );
//   }
// }
//
// class MatchesScreen extends StatefulWidget {
//
//   const MatchesScreen({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<MatchesScreen> createState() => _MatchesScreenState();
// }
//
// class _MatchesScreenState extends State<MatchesScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int _selectedTabIndex = 0;
//   late int _selectedFilterIndex;
//
//   final List<String> _tabs = ['Live', 'Upcoming', 'Results'];
//   final List<String> _filters = ['All', 'International', 'League', 'Domestic' , 'Women'];
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedFilterIndex = 0;
//     _tabController = TabController(length: _tabs.length, vsync: this);
//     _tabController.addListener(() {
//       setState(() {
//         _selectedTabIndex = _tabController.index;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         bottom: TabBar(
//           controller: _tabController,
//           labelColor: Colors.green,
//           unselectedLabelColor: Colors.grey,
//           indicatorColor: Colors.green,
//           indicatorWeight: 3.0,
//           labelStyle: const TextStyle(fontWeight: FontWeight.bold),
//           tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//             color: Color(0xffe9f3ee),
//             height: 80,
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: List.generate(_filters.length, (index) {
//                   bool isSelected = _selectedFilterIndex == index;
//                   return Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 4.0),
//                     child: FilterChip(
//                       selected: isSelected,
//                       backgroundColor: Colors.white,
//                       selectedColor: Colors.green,
//                       label: Text(
//                         _filters[index],
//                         style: TextStyle(
//                           color: isSelected ? Colors.white : Colors.black,
//                           fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//                         ),
//                       ),
//                       onSelected: (selected) {
//                         setState(() {
//                           _selectedFilterIndex = index;
//                         });
//                       },
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 _selectedFilterIndex == 1 ? 'International Matches' :
//                 _selectedFilterIndex == 2 ? 'League Matches' : 'All Matches',
//                 style: const TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 // Live Matches Tab
//                 _buildMatchesList(_selectedFilterIndex),
//                 // Upcoming Tab
//                 Container(child: const Center(child: Text('Upcoming Matches'))),
//                 // Results Tab
//                 Container(child: const Center(child: Text('Match Results'))),
//               ],
//             ),
//           ),
//           _buildBottomNavigationBar(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMatchesList(int filterIndex) {
//     switch (filterIndex) {
//       case 1: // International
//         return ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           children: [
//             _buildMatchCard(
//               'WEST INDIES TOUR OF SRI LANKA',
//               '1ST ODI, AT AHMEDABAD',
//               'WEST INDIES',
//               'SRI LANKA',
//               '352/9 (50 OV)',
//               '242/2 (32.5/50 OV)',
//               'SRI LANKA NEED 110 RUNS',
//               isLive: true,
//             ),
//           ],
//         );
//       case 2: // League
//         return ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           children: [
//             _buildMatchCard(
//               'IPL 2025',
//               'MATCH 4, AT MUMBAI',
//               'MUMBAI INDIANS',
//               'CHENNAI SUPER KINGS',
//               '198/5 (20 OV)',
//               '125/6 (15.2/20 OV)',
//               'CSK NEED 74 RUNS FROM 28 BALLS',
//               isLive: true,
//             ),
//             const SizedBox(height: 16.0),
//             _buildMatchCard(
//               'BIG BASH LEAGUE',
//               'MATCH 12, AT SYDNEY',
//               'SYDNEY SIXERS',
//               'MELBOURNE STARS',
//               '176/7 (20 OV)',
//               '95/4 (12/20 OV)',
//               'STARS NEED 82 RUNS FROM 48 BALLS',
//               isLive: true,
//             ),
//           ],
//         );
//       default: // All
//         return ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           children: [
//             _buildMatchCard(
//               'BANGLADESH TOUR OF INDIA',
//               '1ST ODI, AT AHMEDABAD',
//               'BANGLADESH',
//               'INDIA',
//               '352/9 (50 OV)',
//               '243/2 (32.5/50 OV)',
//               'INDIA NEED 110 RUNS',
//               isLive: true,
//             ),
//             const SizedBox(height: 16.0),
//             _buildMatchCard(
//               'WEST INDIES TOUR OF SRI LANKA',
//               '1ST ODI, AT AHMEDABAD',
//               'WEST INDIES',
//               'SRI LANKA',
//               '352/9 (50 OV)',
//               '242/2 (32.5/50 OV)',
//               'SRI LANKA NEED 70 RUNS',
//               isLive: true,
//             ),
//             const SizedBox(height: 16.0),
//             _buildMatchCard(
//               'IPL 2025',
//               'MATCH 4, AT MUMBAI',
//               'MUMBAI INDIANS',
//               'CHENNAI SUPER KINGS',
//               '198/5 (20 OV)',
//               '125/6 (15.2/20 OV)',
//               'CSK NEED 74 RUNS FROM 28 BALLS',
//               isLive: true,
//             ),
//           ],
//         );
//     }
//   }
//
//   Widget _buildMatchCard(
//       String tourName,
//       String matchInfo,
//       String team1Name,
//       String team2Name,
//       String team1Score,
//       String team2Score,
//       String matchStatus, {
//         bool isLive = false,
//       }) {
//     final Map<String, Widget> teamFlags = {
//       'BANGLADESH': Image.asset(Assets.bd, width: 28, height: 28),
//       'INDIA': Image.asset(Assets.ind, width: 28, height: 28),
//       'WEST INDIES': Image.asset(Assets.wi, width: 28, height: 28),
//       'SRI LANKA': Image.asset(Assets.srilanka, width: 28, height: 28),
//       'MUMBAI INDIANS': Image.asset(Assets.mi, width: 28, height: 28),
//       'CHENNAI SUPER KINGS': Image.asset(Assets.csk, width: 28, height: 28),
//       'SYDNEY SIXERS': Image.asset(Assets.sydney, width: 28, height: 28),
//       'MELBOURNE STARS': Image.asset(Assets.melboune, width: 28, height: 28),
//     };
//
//     // Fallback to emoji when assets aren't available
//     final Map<String, String> teamEmojis = {
//       'BANGLADESH': '🇧🇩',
//       'INDIA': '🇮🇳',
//       'WEST INDIES': '🌴',
//       'SRI LANKA': '🇱🇰',
//       'MUMBAI INDIANS': '🏏',
//       'CHENNAI SUPER KINGS': '🏏',
//       'SYDNEY SIXERS': '🏏',
//       'MELBOURNE STARS': '🏏',
//     };
//
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: const Offset(0, 1),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       tourName,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                     const SizedBox(height: 4.0),
//                     Text(
//                       matchInfo,
//                       style: TextStyle(
//                         color: Colors.grey[600],
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ],
//                 ),
//                 if (isLive)
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 12.0,
//                       vertical: 6.0,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(16.0),
//                     ),
//                     child: const Text(
//                       'LIVE',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           const Divider(height: 1.0),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 12.0,
//               vertical: 8.0,
//             ),
//             child: Row(
//               children: [
//                 // Use the team flag or fallback to emoji
//                 teamFlags[team1Name] != null
//                     ? teamFlags[team1Name]!
//                     : Text(
//                   teamEmojis[team1Name] ?? '🏏',
//                   style: const TextStyle(fontSize: 24.0),
//                 ),
//                 const SizedBox(width: 12.0),
//                 Expanded(
//                   child: Text(
//                     team1Name,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   team1Score,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 12.0,
//               vertical: 8.0,
//             ),
//             child: Row(
//               children: [
//                 teamFlags[team2Name] != null
//                     ? teamFlags[team2Name]!
//                     : Text(
//                   teamEmojis[team2Name] ?? '🏏',
//                   style: const TextStyle(fontSize: 24.0),
//                 ),
//                 const SizedBox(width: 12.0),
//                 Expanded(
//                   child: Text(
//                     team2Name,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   team2Score,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 12.0,
//               right: 12.0,
//               bottom: 12.0,
//             ),
//             child: Text(
//               matchStatus,
//               style: const TextStyle(
//                 color: Colors.cyan,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildBottomNavigationBar() {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border(
//           top: BorderSide(
//             color: Colors.grey.withOpacity(0.3),
//             width: 1.0,
//           ),
//         ),
//       ),
//       child: BottomNavigationBar(
//         currentIndex: 1,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.sports_cricket),
//             label: 'Matches',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.leaderboard_outlined),
//             label: 'Series',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.wifi),
//             label: 'Stream',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.more_horiz),
//             label: 'More',
//           ),
//         ],
//       ),
//     );
//   }
// }