import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/pages/home_dashboard_view/home_view.dart';
import 'package:flutter_admin_dashboard_web/pages/purchase_view/purchase_view.dart';
import 'package:flutter_admin_dashboard_web/pages/users_view/users_view.dart';
import 'package:flutter_admin_dashboard_web/routing/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeDashboardRoute:
      return _getPageRoute(HomeDashboardView());
    case UsersRoute:
      return _getPageRoute(UsersView());
    case PurchaseRoute:
      return _getPageRoute(PurchaseView());
    // case AnnouncementRoute:
    //   return _getPageRoute(AnnouncemetView());
    //    case BannersRoute:
    //   return _getPageRoute(BannersView());
    // case ComplaintRoute:
    //   return _getPageRoute(ComplaintView());
    // case SettingsRoute:
    //   return _getPageRoute(SettingsView());

    // case LoginRoute:
    //   return _getPageRoute(LoginView());
    default:
      return _getPageRoute(HomeDashboardView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
