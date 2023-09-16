import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/src/overview/presentation/widgets/info_card.small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
            isActive: true,
            topColour: Colors.orange,
          ),
          SizedBox(height: context.width / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            onTap: () {},
            topColour: Colors.lightGreen,
          ),
          SizedBox(height: context.width / 64),
          InfoCardSmall(
            title: 'Cancelled deliveries',
            value: '3',
            onTap: () {},
            topColour: Colors.redAccent,
          ),
          SizedBox(height: context.width / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '3',
            onTap: () {},
            topColour: Colors.orange,
          ),
          SizedBox(height: context.width / 64),
        ],
      ),
    );
  }
}
