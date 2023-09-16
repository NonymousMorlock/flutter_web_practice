import 'package:admin_dashboard_web/core/common/widgets/app_text.dart';
import 'package:admin_dashboard_web/core/enums/navigation_enum.dart';
import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/core/res/colours.dart';
import 'package:admin_dashboard_web/core/res/media_res.dart';
import 'package:admin_dashboard_web/src/landing/presentation/widgets/reactive_tile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class NavigationRail extends StatelessWidget {
  const NavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colours.lightColour,
      child: ListView(

        children: [
          if (context.currentBreakpoint.smallerOrEqualTo(MOBILE))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: context.width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(MediaRes.logo),
                    ),
                    const Flexible(
                      child: AppText(
                        'Dash',
                        size: 20,
                        weight: FontWeight.bold,
                        colour: Colours.primaryColour,
                      ),
                    ),
                    SizedBox(width: context.width / 48),
                  ],
                ),
              ],
            ),
          Divider(color: Colours.lightGreyColour.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              NavigationTab.values.length,
                  (index) {
                final tab = NavigationTab.values[index];
                return ReactiveTile(icon: tab.icon, tab: tab);
              },
            ),
          ),
        ],
      ),
    );
  }
}
