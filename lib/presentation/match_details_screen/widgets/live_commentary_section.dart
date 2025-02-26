import 'package:flutter/material.dart';
import 'package:sport_ui/presentation/match_details_screen/widgets/score_section_widget.dart';


import 'commentary_item.dart';
import 'match_header_widget.dart';
import 'over_end_divider.dart';

class LiveCommentarySection extends StatelessWidget {
  const LiveCommentarySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Column(children: [
        const MatchHeader(),
    const ScoreSectionWidget(),
    ],),
    Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: const BoxDecoration(
    border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
    ),
    child: const Row(
    children: [
    Text(
    'Commentary',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    ),
    ],
    ),
    ),
    ListView(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    children: [
    const CommentaryItem(
    title: 'Shardul Thakur to Shakib, Dot Ball!',
    description: 'Tossed up full on off, going in to take the outside edge but falls short of second slip',
    over: '7.1',
    runs: 20,
    ballColor: Colors.grey,
    ),
    const OverEndDivider(over: '7', runs: '20 Runs'),
      const CommentaryItem(
        title: 'Shardul Thakur to Litton Das, FOUR!',
        description: 'gets down low and sweeps it over mid-wicket. Picked the length ball for the shot and hammered it hard.',
        over: '6.6',
        runs: 0,
        ballColor: Colors.blue,
      ),
      const CommentaryItem(
        title: 'Shardul Thakur to Litton Das, No Run!',
        description: 'goes up on off. Litton defends into the off sides',
        over: '6.5',
        runs: 0,
        ballColor: Colors.grey,
      ),
      const CommentaryItem(
        title: 'Shardul Thakur to Litton Das, SIX!',
        description: 'clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull.',
        over: '6.4',
        runs: 0,
        ballColor: Colors.green,
      ),
      const CommentaryItem(
        title: 'Shardul to Litton Das, FOUR runs!',
        description: 'gets outside his crease to play in the leg-side but gets an inside edge that travels between bat and pad, runs away fine of leg slip for four.',
        over: '6.3',
        runs: 0,
        ballColor: Colors.blue,
      ),
      const CommentaryItem(
        title: 'Shardul to Litton Das, FOUR runs!',
        description: 'short and on the zone outside off. Litton wears his front leg and smoke it for an 86-metre maximum over mid-wicket. Lovely timing on the pull.',
        over: '6.2',
        runs: 0,
        ballColor: Colors.grey,
      ),
      const CommentaryItem(
        title: 'Shardul Thakur to Litton Das, FOUR runs!',
        description: 'Now cut past point! Short and wide again and Moeen feasts on it!',
        over: '6.1',
        runs: 0,
        ballColor: Colors.blue,
      ),
      const OverEndDivider(over: '6', runs: '12 Runs'),
      const CommentaryItem(
        title: 'Shardul Thakur to Shakib, FOUR runs!',
        description: 'On an ideal length again and Shakib cuts late again and Moeen feasts on it!',
        over: '5.6',
        runs: 0,
        ballColor: Colors.blue,
      ),
      const CommentaryItem(
        title: 'Shardul Thakur to Shakib, No Run!',
        description: 'tossed up on off. Litton defends into the off sides',
        over: '5.5',
        runs: 0,
        ballColor: Colors.grey,
      ),
      const CommentaryItem(
        title: 'Shardul Thakur to Shakib, SIX!',
        description: 'short in the zone outside off and in the zone. Shakib clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull.',
        over: '5.5',
        runs: 0,
        ballColor: Colors.green,
      ),
      const CommentaryItem(
        title: 'Shardul Thakur to Shakib, Two!',
        description: 'short and in the zone outside off. Moeen clears his front leg and smokes it for an 86-metre maximum over mid-wicket. Lovely timing on the pull.',
        over: '5.3',
        runs: 0,
        ballColor: Colors.grey,
      ),
    ],
    ),
        ],
    );
  }
}