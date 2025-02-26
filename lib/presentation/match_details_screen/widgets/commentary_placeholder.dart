import 'package:flutter/material.dart';

class CommentaryPlaceholder extends StatelessWidget {
  const CommentaryPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Center(child: Text("Full commentary will be implemented here.")),
    );
  }
}