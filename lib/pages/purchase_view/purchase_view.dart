import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/pages/purchase_view/purchase_desktop_view.dart';
import 'package:flutter_admin_dashboard_web/pages/purchase_view/purchase_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PurchaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PurchaseMobileView(),
      desktop: PurchaseDesktopView(),
    );
  }
}
