// lib/widgets/matches_list_view.dart
import 'package:flutter/material.dart';
import '../widgets/match_card.dart';
import '../models/match_data.dart';
import '../repositories/match_repository.dart';

class MatchesListView extends StatelessWidget {
  final int filterIndex;
  final MatchRepository _repository = MatchRepository();

  MatchesListView({
    Key? key,
    required this.filterIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MatchData> matches = _repository.getMatches(filterIndex);

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: matches.length,
      itemBuilder: (context, index) {
        final match = matches[index];

        return Column(
          children: [
            MatchCard(
              tourName: match.tourName,
              matchInfo: match.matchInfo,
              team1Name: match.team1Name,
              team2Name: match.team2Name,
              team1Score: match.team1Score,
              team2Score: match.team2Score,
              matchStatus: match.matchStatus,
              isLive: match.isLive,
            ),
            if (index < matches.length - 1) const SizedBox(height: 16.0),
          ],
        );
      },
    );
  }
}