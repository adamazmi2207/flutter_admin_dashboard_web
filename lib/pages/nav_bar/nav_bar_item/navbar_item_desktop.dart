import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_admin_dashboard_web/data_models/navbar_item_models.dart';
import 'package:stacked/stacked.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              model.iconData,
              color: Colors.white,
              size: 32,
            ),
            SizedBox(width: 30),
            Expanded(
              child: Text(
                model.title,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
