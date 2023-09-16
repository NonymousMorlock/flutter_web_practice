import 'package:admin_dashboard_web/core/common/widgets/app_text.dart';
import 'package:admin_dashboard_web/core/enums/navigation_enum.dart';
import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/core/res/colours.dart';
import 'package:admin_dashboard_web/src/landing/presentation/app/nav_rail_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ReactiveTile extends StatelessWidget {
  const ReactiveTile({
    required this.icon,
    required this.tab,
    super.key,
  });

  final IconData icon;
  final NavigationTab tab;

  @override
  Widget build(BuildContext context) {
    return Consumer<NavRailController>(
      builder: (_, controller, __) {
        final isActive = controller.activeTab == tab;
        final isHovered = controller.hoveredTab == tab;
        return InkWell(
          onTap: () {
            controller.goTo(tab);
            context.go(tab.path);
          },
          onHover: (hovering) {
            if (hovering) {
              controller.hoverOver(tab);
            } else {
              controller.hoverOver(null);
            }
          },
          child: Container(
            padding: EdgeInsets.only(
              left:
                  context.currentBreakpoint.smallerOrEqualTo(MOBILE) ? 40 : 20,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              border: isActive || isHovered
                  ? const Border(
                      left: BorderSide(width: 7, color: Colours.darkColour),
                    )
                  : null,
              color: isHovered ? Colours.lightGreyColour.withOpacity(.1) : null,
            ),
            child: ResponsiveRowColumn(
              columnMainAxisSize: MainAxisSize.min,
              rowMainAxisSize: MainAxisSize.min,
              columnCrossAxisAlignment: CrossAxisAlignment.start,
              layout: context.currentBreakpoint.smallerOrEqualTo(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              columnSpacing: 20,
              rowSpacing: 20,
              children: [
                // if the tab is active, we return height 22 with dark colour
                // if the tab is inactive, we return without defining a height
                // and if it gets hovered, we turn the colour dark, else light
                // grey. REMEMBER(an active tab can't react to a hover state)
                ResponsiveRowColumnItem(
                  child: AnimatedContainer(
                    height: isActive ? 22 : null,
                    duration: const Duration(milliseconds: 500),
                    child: Icon(
                      icon,
                      color: isActive
                          ? Colours.darkColour
                          : (isHovered
                              ? Colours.darkColour
                              : Colours.lightGreyColour),
                    ),
                  ),
                ),
                if (!isActive)
                  ResponsiveRowColumnItem(
                    columnFlex: 1,
                    rowFlex: 1,
                    child: AppText(
                      tab.name,
                      colour: isHovered
                          ? Colours.darkColour
                          : Colours.lightGreyColour,
                    ),
                  )
                else
                  ResponsiveRowColumnItem(
                    columnFlex: 1,
                    rowFlex: 1,
                    child: AppText(
                      tab.name,
                      colour: Colours.darkColour,
                      size: 18,
                      weight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
