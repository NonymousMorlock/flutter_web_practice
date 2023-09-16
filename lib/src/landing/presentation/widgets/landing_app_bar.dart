import 'package:admin_dashboard_web/core/common/widgets/app_text.dart';
import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/core/res/colours.dart';
import 'package:admin_dashboard_web/core/res/media_res.dart';
import 'package:admin_dashboard_web/src/landing/presentation/app/nav_rail_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LandingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: context.currentBreakpoint.smallerOrEqualTo(MOBILE)
          ? IconButton(
              icon: const Icon(Icons.menu),
              onPressed: Scaffold.of(context).openDrawer,
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(MediaRes.logo, width: 28),
                ),
                const SizedBox(width: 20),
                const AppText(
                  'Dash',
                  colour: Colours.lightGreyColour,
                  size: 20,
                  weight: FontWeight.bold,
                ),
              ],
            ),
      leadingWidth: context.currentBreakpoint.smallerThan(TABLET)
          ? null
          : context.width * .16,
      titleSpacing: context.currentBreakpoint.largerThan(PHONE) ? null : 0,
      title: Consumer<NavRailController>(
        builder: (_, controller, __) {
          return AppText(
            controller.activeTab.name,
            size: context.currentBreakpoint.smallerThan(TABLET) ? 20 : 24,
            weight: FontWeight.bold,
          );
        },
      ),
      backgroundColor: Colours.lightColour,
      iconTheme: const IconThemeData(color: Colours.darkColour),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: Colours.darkColour.withOpacity(.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colours.darkColour.withOpacity(.7),
              ),
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colours.primaryColour,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colours.lightColour, width: 2),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: Colours.lightGreyColour,
        ),
        const SizedBox(width: 24),
        // PHONE is super small, so adding the name hurts the layout, we'll
        // add it on every other breakpoint that's not PHONE
        if (context.currentBreakpoint.largerThan(PHONE))
          const AppText('Akundada', colour: Colours.lightGreyColour),
        const SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: const CircleAvatar(
              backgroundColor: Colours.lightColour,
              child: Icon(Icons.person_outline, color: Colours.darkColour),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
