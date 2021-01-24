import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/pages/home_dashboard_view/home_content_desktop.dart';
import 'package:flutter_admin_dashboard_web/pages/home_dashboard_view/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
