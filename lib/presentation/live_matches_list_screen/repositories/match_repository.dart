// lib/repositories/match_repository.dart
import '../models/match_data.dart';

class MatchRepository {
  List<MatchData> getMatches(int filterIndex) {
    switch (filterIndex) {
      case 1: // International
        return [
          MatchData(
            tourName: 'WEST INDIES TOUR OF SRI LANKA',
            matchInfo: '1ST ODI, AT AHMEDABAD',
            team1Name: 'WEST INDIES',
            team2Name: 'SRI LANKA',
            team1Score: '352/9 (50 OV)',
            team2Score: '242/2 (32.5/50 OV)',
            matchStatus: 'SRI LANKA NEED 110 RUNS',
            isLive: true,
          ),
        ];
      case 2: // League
        return [
          MatchData(
            tourName: 'IPL 2025',
            matchInfo: 'MATCH 4, AT MUMBAI',
            team1Name: 'MUMBAI INDIANS',
            team2Name: 'CHENNAI SUPER KINGS',
            team1Score: '198/5 (20 OV)',
            team2Score: '125/6 (15.2/20 OV)',
            matchStatus: 'CSK NEED 74 RUNS FROM 28 BALLS',
            isLive: true,
          ),
          MatchData(
            tourName: 'BIG BASH LEAGUE',
            matchInfo: 'MATCH 12, AT SYDNEY',
            team1Name: 'SYDNEY SIXERS',
            team2Name: 'MELBOURNE STARS',
            team1Score: '176/7 (20 OV)',
            team2Score: '95/4 (12/20 OV)',
            matchStatus: 'STARS NEED 82 RUNS FROM 48 BALLS',
            isLive: true,
          ),
        ];
      default: // All
        return [
          MatchData(
            tourName: 'BANGLADESH TOUR OF INDIA',
            matchInfo: '1ST ODI, AT AHMEDABAD',
            team1Name: 'BANGLADESH',
            team2Name: 'INDIA',
            team1Score: '352/9 (50 OV)',
            team2Score: '243/2 (32.5/50 OV)',
            matchStatus: 'INDIA NEED 110 RUNS',
            isLive: true,
          ),
          MatchData(
            tourName: 'WEST INDIES TOUR OF SRI LANKA',
            matchInfo: '1ST ODI, AT AHMEDABAD',
            team1Name: 'WEST INDIES',
            team2Name: 'SRI LANKA',
            team1Score: '352/9 (50 OV)',
            team2Score: '242/2 (32.5/50 OV)',
            matchStatus: 'SRI LANKA NEED 70 RUNS',
            isLive: true,
          ),
          MatchData(
            tourName: 'IPL 2025',
            matchInfo: 'MATCH 4, AT MUMBAI',
            team1Name: 'MUMBAI INDIANS',
            team2Name: 'CHENNAI SUPER KINGS',
            team1Score: '198/5 (20 OV)',
            team2Score: '125/6 (15.2/20 OV)',
            matchStatus: 'CSK NEED 74 RUNS FROM 28 BALLS',
            isLive: true,
          ),
        ];
    }
  }
}