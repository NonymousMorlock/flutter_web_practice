import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

extension ContextExt on BuildContext {
  ResponsiveBreakpointsData get currentBreakpoint =>
      ResponsiveBreakpoints.of(this);

  bool get isMobile => currentBreakpoint.isMobile;
  bool get isDesktop => currentBreakpoint.isDesktop;
  bool get isTablet => currentBreakpoint.isTablet;
  bool get isPhone => currentBreakpoint.isPhone;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;
}
