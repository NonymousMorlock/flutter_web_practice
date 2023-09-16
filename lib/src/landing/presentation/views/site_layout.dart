import 'package:admin_dashboard_web/core/common/widgets/responsive_wrapper.dart';
import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/src/landing/presentation/responsive/large_layout.dart';
import 'package:admin_dashboard_web/src/landing/presentation/responsive/small_layout.dart';
import 'package:admin_dashboard_web/src/landing/presentation/widgets/landing_app_bar.dart';
import 'package:admin_dashboard_web/src/landing/presentation/widgets/navigation_rail.dart';
import 'package:flutter/material.dart' hide NavigationRail;

class SiteLayout extends StatelessWidget {
  const SiteLayout({required this.child, super.key});

  static const path = '/';

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LandingAppBar(),
      drawer: Drawer(width: context.width * .8, child: const NavigationRail()),
      body: ResponsiveWrapper(
        largeLayout: LargeLayout(body: child),
        smallLayout: SmallLayout(body: child),
      ),
    );
  }
}
