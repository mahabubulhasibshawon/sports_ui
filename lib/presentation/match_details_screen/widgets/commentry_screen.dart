import 'package:flutter/material.dart';

class CricketCommentaryWidget extends StatelessWidget {
  const CricketCommentaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          _buildCommentaryList(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFFE8F5F0),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      child: const Text(
        'Commentary',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCommentaryList() {
    return Column(
      children: [
        _buildOver(
          overNumber: 7,
          balls: [
            BallData(
              number: 7.5,
              bowler: 'Jadeja',
              batsman: 'Mahmudullah',
              result: 'WICKET!',
              description: 'Cleaned up! No referrals needed for that. Angles it in on length, Saqlain goes for a heave across the line but misses and sees his stumps shattered.',
              runs: 0,
              isWicket: true,
            ),
            BallData(
              number: 7.4,
              bowler: 'Jadeja',
              batsman: 'Shakib',
              result: '1 Run!',
              description: 'Full and outside off, driven to sweeper cover',
              runs: 1,
              isWicket: false,
            ),
            BallData(
              number: 7.3,
              bowler: 'Jadeja',
              batsman: 'Shakib',
              result: 'Two Runs!',
              description: 'Short and slanting away outside off, he slaps it over backward point',
              runs: 2,
              isWicket: false,
            ),
            BallData(
              number: 7.2,
              bowler: 'Jadeja',
              batsman: 'Shakib',
              result: 'Four!',
              description: 'My word! Some shot to bring up the fifty partnership. Length ball outside off, Joseph stands tall and punches it through extra cover. Neither mid-off nor cover moved',
              runs: 4,
              isWicket: false,
            ),
            BallData(
              number: 7.1,
              bowler: 'Jadeja',
              batsman: 'Shakib',
              result: 'No Run!',
              description: 'Quicker and full on middle, he goes back to keep it out',
              runs: 0,
              isWicket: false,
            ),
          ],
          totalRuns: 20,
        ),
        _buildOver(
          overNumber: 6,
          balls: [
            BallData(
              number: 6.6,
              bowler: 'Shadrul Thakur',
              batsman: 'Litton Das',
              result: 'FOUR!',
              description: 'gets down low and sweeps it over mid-wicket. Picked the slower ball for the shot and hammered it hard.',
              runs: 4,
              isWicket: false,
            ),
            BallData(
              number: 6.5,
              bowler: 'Shadrul Thakur',
              batsman: 'Litton Das',
              result: 'No Run!',
              description: 'tossed up on off, Litton Depends into the off sides',
              runs: 0,
              isWicket: false,
            ),
            BallData(
              number: 6.4,
              bowler: 'Shadrul Thakur',
              batsman: 'Litton Das',
              result: 'SIX, 134ks',
              description: 'short and in the zone outside off, Motie clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull.',
              runs: 6,
              isWicket: false,
            ),
            BallData(
              number: 6.3,
              bowler: 'Shadrul',
              batsman: 'Litton Das',
              result: 'FOUR runs!',
              description: 'Oh, so close! Litton wants to play the big shot to the full delivery but gets an inside edge past leg-stump and it runs away fine of leg slip for four.',
              runs: 4,
              isWicket: false,
            ),
            BallData(
              number: 6.2,
              bowler: 'Shadrul Thakur',
              batsman: 'Litton Das',
              result: 'SIX!',
              description: '134ks short and in the zone outside off, Motie clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull.',
              runs: 6,
              isWicket: false,
            ),
            BallData(
              number: 6.1,
              bowler: 'Shadrul Thakur',
              batsman: 'Litton Das',
              result: 'FOUR runs!',
              description: 'Now cut past point! Short and wide again and Motie feasts on it!',
              runs: 4,
              isWicket: false,
            ),
          ],
          totalRuns: 12,
        ),
        _buildPartialOver(
          overNumber: 5,
          balls: [
            BallData(
              number: 5.6,
              bowler: 'Shadrul Thakur',
              batsman: 'Shanto',
              result: 'FOUR runs!',
              description: 'Now cut past point! Short and wide again and Motie feasts on it!',
              runs: 4,
              isWicket: false,
            ),
            BallData(
              number: 5.5,
              bowler: 'Shadrul Thakur',
              batsman: 'Shanto',
              result: 'No Run!',
              description: 'tossed up on off, Litton Depends into the off sides',
              runs: 0,
              isWicket: false,
            ),
            BallData(
              number: 5.5,
              bowler: 'Shadrul Thakur',
              batsman: 'Shanto',
              result: 'SIX, 134ks',
              description: 'short and in the zone outside off, Motie clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull..',
              runs: 6,
              isWicket: false,
            ),
            BallData(
              number: 5.3,
              bowler: 'Shadrul Thakur',
              batsman: 'Shanto',
              result: 'Two!',
              description: '134ks short and in the zone outside off, Motie clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull..',
              runs: 2,
              isWicket: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOver({required int overNumber, required List<BallData> balls, int? totalRuns}) {
    return Column(
      children: [
        ...balls.map((ball) => _buildBallCommentary(ball)).toList(),
        if (totalRuns != null) _buildOverSummary(overNumber, totalRuns),
      ],
    );
  }

  Widget _buildPartialOver({required int overNumber, required List<BallData> balls}) {
    return Column(
      children: balls.map((ball) => _buildBallCommentary(ball)).toList(),
    );
  }

  Widget _buildBallCommentary(BallData ball) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            alignment: Alignment.centerLeft,
            child: Text(
              ball.number.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 8),
          _buildRunIndicator(ball),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: '${ball.bowler} to ${ball.batsman}, ',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ball.result,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ball.isWicket ? Colors.red : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  ball.description,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRunIndicator(BallData ball) {
    Color backgroundColor;
    Color textColor = Colors.white;

    if (ball.isWicket) {
      backgroundColor = Colors.red;
    } else if (ball.runs == 4) {
      backgroundColor = Colors.blue;
    } else if (ball.runs == 6) {
      backgroundColor = Colors.green;
    } else if (ball.runs > 0) {
      backgroundColor = Colors.grey;
      textColor = Colors.black;
    } else {
      backgroundColor = Colors.grey.shade300;
      textColor = Colors.black;
    }

    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Text(
        ball.isWicket ? 'W' : ball.runs.toString(),
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildOverSummary(int overNumber, int totalRuns) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      child: Column(
        children: [
          const Divider(height: 1),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'END OF OVER $overNumber',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            '$totalRuns Runs',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class BallData {
  final double number;
  final String bowler;
  final String batsman;
  final String result;
  final String description;
  final int runs;
  final bool isWicket;

  BallData({
    required this.number,
    required this.bowler,
    required this.batsman,
    required this.result,
    required this.description,
    required this.runs,
    required this.isWicket,
  });
}

// Usage in a TabBarView
class CricketScoreboardScreen extends StatelessWidget {
  const CricketScoreboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Match Details'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'SCORECARD'),
              Tab(text: 'COMMENTARY'),
              Tab(text: 'INFO'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(child: Text('Scorecard Tab')),
            // This is where our commentary widget goes
            const CricketCommentaryWidget(),
            const Center(child: Text('Info Tab')),
          ],
        ),
      ),
    );
  }
}
