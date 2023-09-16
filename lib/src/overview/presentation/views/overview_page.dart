import 'package:admin_dashboard_web/core/common/widgets/responsive_wrapper.dart';
import 'package:admin_dashboard_web/src/landing/presentation/app/nav_rail_controller.dart';
import 'package:admin_dashboard_web/src/overview/presentation/widgets/overview_cards_large.dart';
import 'package:admin_dashboard_web/src/overview/presentation/widgets/overview_cards_medium.dart';
import 'package:admin_dashboard_web/src/overview/presentation/widgets/overview_cards_small.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  static const path = '/overview';

  @override
  Widget build(BuildContext context) {
    return Consumer<NavRailController>(
      builder: (_, controller, __) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ResponsiveWrapper(
                    largeLayout: OverViewCardsLarge(),
                    mediumLayout: OverviewCardsMedium(),
                    smallLayout: OverviewCardsSmall(),
                    customLayout: OverviewCardsMedium(),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
