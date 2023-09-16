import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ResponsiveWrapper extends StatelessWidget {
  const ResponsiveWrapper({
    required this.largeLayout,
    super.key,
    this.mediumLayout,
    this.smallLayout,
    this.customLayout,
  });

  final Widget largeLayout;
  final Widget? mediumLayout;
  final Widget? smallLayout;
  final Widget? customLayout;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)) {
      return largeLayout;
    } else if (ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)) {
      return mediumLayout ?? largeLayout;
    } else if (ResponsiveBreakpoints.of(context).largerOrEqualTo(PHONE)) {
      return smallLayout ?? mediumLayout ?? largeLayout;
    }
    return customLayout ?? mediumLayout ?? smallLayout ?? largeLayout;
  }
}
