import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/pages/users_view/users_desktop_view.dart';
import 'package:flutter_admin_dashboard_web/pages/users_view/users_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UsersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: UsersMobileView(),
      desktop: UsersDesktopView(),
    );
  }
}
