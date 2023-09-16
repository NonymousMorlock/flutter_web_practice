
import 'package:admin_dashboard_web/core/enums/navigation_enum.dart';
import 'package:flutter/foundation.dart';

class NavRailController extends ChangeNotifier {

  NavigationTab _activeTab = NavigationTab.OVERVIEW;
  NavigationTab get activeTab => _activeTab;

  NavigationTab? _hoveredTab;
  NavigationTab? get hoveredTab => _hoveredTab;

  void goTo(NavigationTab tab) {
    if(_activeTab != tab) {
      _activeTab = tab;
      notifyListeners();
    }
  }

  void hoverOver(NavigationTab? tab) {
    if(_hoveredTab != tab && _activeTab != tab) {
      _hoveredTab = tab;
      notifyListeners();
    }
  }
}
