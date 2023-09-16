import 'package:admin_dashboard_web/src/landing/presentation/widgets/navigation_rail.dart';
import 'package:flutter/material.dart' hide NavigationRail;

class LargeLayout extends StatelessWidget {
  const LargeLayout({required this.body, super.key});

  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: NavigationRail()),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: body,
          ),
        ),
      ],
    );
  }
}
