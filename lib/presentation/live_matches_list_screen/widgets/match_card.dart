// lib/widgets/match_card.dart
import 'package:flutter/material.dart';
import 'package:sport_ui/assets.dart';

class MatchCard extends StatelessWidget {
  final String tourName;
  final String matchInfo;
  final String team1Name;
  final String team2Name;
  final String team1Score;
  final String team2Score;
  final String matchStatus;
  final bool isLive;

  const MatchCard({
    Key? key,
    required this.tourName,
    required this.matchInfo,
    required this.team1Name,
    required this.team2Name,
    required this.team1Score,
    required this.team2Score,
    required this.matchStatus,
    this.isLive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget> teamFlags = {
      'BANGLADESH': Image.asset(Assets.bd, width: 28, height: 28),
      'INDIA': Image.asset(Assets.ind, width: 28, height: 28),
      'WEST INDIES': Image.asset(Assets.wi, width: 28, height: 28),
      'SRI LANKA': Image.asset(Assets.srilanka, width: 28, height: 28),
      'MUMBAI INDIANS': Image.asset(Assets.mi, width: 28, height: 28),
      'CHENNAI SUPER KINGS': Image.asset(Assets.csk, width: 28, height: 28),
      'SYDNEY SIXERS': Image.asset(Assets.sydney, width: 28, height: 28),
      'MELBOURNE STARS': Image.asset(Assets.melboune, width: 28, height: 28),
    };

    // Fallback to emoji when assets aren't available
    final Map<String, String> teamEmojis = {
      'BANGLADESH': '🇧🇩',
      'INDIA': '🇮🇳',
      'WEST INDIES': '🌴',
      'SRI LANKA': '🇱🇰',
      'MUMBAI INDIANS': '🏏',
      'CHENNAI SUPER KINGS': '🏏',
      'SYDNEY SIXERS': '🏏',
      'MELBOURNE STARS': '🏏',
    };

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tourName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      matchInfo,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                if (isLive)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Text(
                      'LIVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const Divider(height: 1.0),
          _buildTeamRow(team1Name, team1Score, teamFlags, teamEmojis),
          _buildTeamRow(team2Name, team2Score, teamFlags, teamEmojis),
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              bottom: 12.0,
            ),
            child: Text(
              matchStatus,
              style: const TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamRow(
      String teamName,
      String score,
      Map<String, Widget> teamFlags,
      Map<String, String> teamEmojis
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          teamFlags[teamName] != null
              ? teamFlags[teamName]!
              : Text(
            teamEmojis[teamName] ?? '🏏',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Text(
              teamName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            score,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}