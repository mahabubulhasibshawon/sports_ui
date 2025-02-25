// lib/widgets/section_header.dart
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final int filterIndex;

  const SectionHeader({
    Key? key,
    required this.filterIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title;

    switch (filterIndex) {
      case 1:
        title = 'International Matches';
        break;
      case 2:
        title = 'League Matches';
        break;
      case 3:
        title = 'Domestic Matches';
        break;
      case 4:
        title = 'Women Matches';
        break;
      default:
        title = 'All Matches';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}