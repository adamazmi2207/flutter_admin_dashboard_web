import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/locator.dart';
import 'package:flutter_admin_dashboard_web/pages/nav_bar/nav_bar.dart';
import 'package:flutter_admin_dashboard_web/routing/route_names.dart';
import 'package:flutter_admin_dashboard_web/routing/router.dart';
import 'package:flutter_admin_dashboard_web/services/navigation_service.dart';
import 'package:flutter_admin_dashboard_web/theme/color/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        // drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
        //     ? NavigationDrawer()
        //     : null,
        backgroundColor: kPrimaryBlack,
        body: Row(
          children: [
            NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeDashboardRoute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
