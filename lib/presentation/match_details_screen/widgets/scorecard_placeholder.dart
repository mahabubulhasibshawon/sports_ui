import 'package:flutter/material.dart';

class ScorecardPlaceholder extends StatelessWidget {
  const ScorecardPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Center(child: Text("Scorecard will be implemented here.")),
    );
  }
}