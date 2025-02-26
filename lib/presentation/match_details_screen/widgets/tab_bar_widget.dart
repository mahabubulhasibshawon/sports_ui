import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final int selectedTab;
  final List<String> tabs;
  final Function(int) onTabChanged;

  const TabBarWidget({
    Key? key,
    required this.selectedTab,
    required this.tabs,
    required this.onTabChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      child: Row(
        children: List.generate(
          tabs.length,
              (index) => Expanded(
            child: GestureDetector(
              onTap: () => onTabChanged(index),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  border: selectedTab == index
                      ? const Border(
                    bottom: BorderSide(color: Colors.green, width: 2.0),
                  )
                      : null,
                ),
                child: Text(
                  tabs[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: selectedTab == index ? Colors.green : Colors.grey,
                    fontWeight: selectedTab == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
