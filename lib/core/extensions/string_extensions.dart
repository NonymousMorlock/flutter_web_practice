
import 'package:admin_dashboard_web/core/enums/navigation_enum.dart';

extension StringExt on String {
  NavigationTab get tab {
    if(this == NavigationTab.OVERVIEW.path) {
      return NavigationTab.OVERVIEW;
    } else if(this == NavigationTab.AUTH.path) {
      return NavigationTab.AUTH;
    } else if(this == NavigationTab.CLIENTS.path) {
      return NavigationTab.CLIENTS;
    } else if(this == NavigationTab.DRIVERS.path) {
      return NavigationTab.DRIVERS;
    }
    return NavigationTab.OVERVIEW;
  }
}
