import 'package:flutter/material.dart';

class LastBallsRow extends StatelessWidget {
  const LastBallsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> balls = [
      {'text': '•', 'color': Colors.grey},
      {'text': 'W', 'color': Colors.red},
      {'text': '4', 'color': Colors.blue},
      {'text': '1', 'color': Colors.grey},
      {'text': '•', 'color': Colors.grey},
      {'text': '6', 'color': Colors.green},
      {'text': '1', 'color': Colors.blue},
      {'text': '•', 'color': Colors.grey},
      {'text': '•', 'color': Colors.grey},
      {'text': '•', 'color': Colors.grey},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: balls.map((ball) {
        return Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: ball['color'],
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            ball['text'],
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        );
      }).toList(),
    );
  }
}