import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/data_models/navbar_item_models.dart';
import 'package:flutter_admin_dashboard_web/locator.dart';
import 'package:flutter_admin_dashboard_web/pages/nav_bar/nav_bar_item/navbar_item_desktop.dart';
import 'package:flutter_admin_dashboard_web/pages/nav_bar/nav_bar_item/navbar_item_mobile.dart';
import 'package:flutter_admin_dashboard_web/services/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const NavBarItem({Key key, this.title, this.navigationPath, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ),
      ),
    );
  }
}
