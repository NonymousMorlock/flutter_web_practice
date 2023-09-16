import 'package:flutter/material.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({required this.body, super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: body,
    );
  }
}
