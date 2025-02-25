// lib/widgets/match_filters.dart
import 'package:flutter/material.dart';

class MatchFilters extends StatelessWidget {
  final Function(int) onFilterSelected;
  final int selectedFilterIndex;
  final List<String> _filters = ['All', 'International', 'League', 'Domestic', 'Women'];

  MatchFilters({
    Key? key,
    required this.onFilterSelected,
    required this.selectedFilterIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: const Color(0xffe9f3ee),
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(_filters.length, (index) {
            bool isSelected = selectedFilterIndex == index;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: FilterChip(
                selected: isSelected,
                backgroundColor: Colors.white,
                selectedColor: Colors.green,
                label: Text(
                  _filters[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                onSelected: (selected) {
                  onFilterSelected(index);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              ),
            );
          }),
        ),
      ),
    );
  }
}