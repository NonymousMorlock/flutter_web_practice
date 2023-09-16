
import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/src/overview/presentation/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsMedium extends StatelessWidget {
  const OverviewCardsMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Rides in progress',
              value: '7',
              onTap: () {},
              edgeColour: Colors.orange,
            ),
            SizedBox(width: context.width / 64),
            InfoCard(
              title: 'Packages delivered',
              value: '17',
              onTap: () {},
              edgeColour: Colors.lightGreen,
            ),
          ],
        ),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled deliveries',
              value: '3',
              onTap: () {},
              edgeColour: Colors.redAccent,
            ),
            SizedBox(width: context.width / 64),
            InfoCard(
              title: 'Scheduled deliveries',
              value: '3',
              onTap: () {},
              edgeColour: Colors.orange,
            ),
          ],
        ),
      ],
    );
  }
}

