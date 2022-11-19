import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({
    required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade50,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget),
    );
  }
}
