import 'package:admin_dashboard_web/src/landing/presentation/app/nav_rail_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  static const path = '/drivers';

  @override
  Widget build(BuildContext context) {
    return Consumer<NavRailController>(
      builder: (_, controller, __) {
        return const Column(
          children: [
            Row(
              children: [],
            ),
          ],
        );
      },
    );
  }
}
