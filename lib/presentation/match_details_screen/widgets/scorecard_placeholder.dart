import 'package:flutter/material.dart';

import '../scorecard_widgets/batsman_section_widget.dart';
import '../scorecard_widgets/extras_widget.dart';
import '../scorecard_widgets/team_data.dart';
import '../scorecard_widgets/team_selector_widget.dart';
import 'match_header_widget.dart';
import 'score_section_widget.dart';

class ScorecardPlaceholder extends StatefulWidget {
  const ScorecardPlaceholder({Key? key}) : super(key: key);

  @override
  State<ScorecardPlaceholder> createState() => _ScorecardPlaceholderState();
}

class _ScorecardPlaceholderState extends State<ScorecardPlaceholder> {
  bool showBangladeshData = true;

  void toggleTeamData(bool isBangladesh) {
    setState(() {
      showBangladeshData = isBangladesh;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        const ScoreSectionWidget(),
        const Divider(),
        TeamSelectorWidget(
          showBangladeshData: showBangladeshData,
          onTeamSelected: toggleTeamData,
        ),
        BatsmanSectionWidget(
          batsmanData: showBangladeshData ?
          TeamData.bangladeshBatsmen :
          TeamData.indiaBatsmen,
        ),
        const ExtrasWidget()
        // Row(
        //   children: [
        //     Expanded(
        //       child: Container(
        //         padding: const EdgeInsets.symmetric(vertical: 12),
        //         decoration: BoxDecoration(
        //           color: Colors.green,
        //           borderRadius: BorderRadius.circular(24),
        //         ),
        //         alignment: Alignment.center,
        //         margin: const EdgeInsets.symmetric(horizontal: 12),
        //         child: const Text(
        //           'Bangladesh',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold,
        //             fontSize: 16,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         padding: const EdgeInsets.symmetric(vertical: 12),
        //         decoration: BoxDecoration(
        //           color: Colors.grey.shade200,
        //           borderRadius: BorderRadius.circular(24),
        //         ),
        //         alignment: Alignment.center,
        //         margin: const EdgeInsets.symmetric(horizontal: 12),
        //         child: const Text(
        //           'India',
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontWeight: FontWeight.bold,
        //             fontSize: 16,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],),
    );
  }
}