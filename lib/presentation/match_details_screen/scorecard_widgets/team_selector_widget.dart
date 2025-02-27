import 'package:flutter/material.dart';

class TeamSelectorWidget extends StatelessWidget {
  final bool showBangladeshData;
  final Function(bool) onTeamSelected;

  const TeamSelectorWidget({
    Key? key,
    required this.showBangladeshData,
    required this.onTeamSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onTeamSelected(true),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: showBangladeshData ? Colors.green : Colors.white,
                border: const Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: Text(
                'Bangladesh',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: showBangladeshData ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => onTeamSelected(false),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: !showBangladeshData ? Colors.green : Colors.white,
                border: const Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: Text(
                'India',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: !showBangladeshData ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}