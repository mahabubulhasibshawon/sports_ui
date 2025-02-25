// lib/models/match_data.dart
class MatchData {
  final String tourName;
  final String matchInfo;
  final String team1Name;
  final String team2Name;
  final String team1Score;
  final String team2Score;
  final String matchStatus;
  final bool isLive;

  MatchData({
    required this.tourName,
    required this.matchInfo,
    required this.team1Name,
    required this.team2Name,
    required this.team1Score,
    required this.team2Score,
    required this.matchStatus,
    this.isLive = false,
  });
}