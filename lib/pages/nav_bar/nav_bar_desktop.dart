import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/pages/nav_bar/nav_bar_item/nav_bar_item.dart';
import 'package:flutter_admin_dashboard_web/routing/route_names.dart';
import 'package:flutter_admin_dashboard_web/theme/color/colors.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Admin Panel',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            // color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: kTeal,
                ),
                Column(
                  children: [
                    Text(
                      'Adam Azmi',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Administrator',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: ListView(
                // reverse: true,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  NavBarItem(
                    icon: Icons.speed,
                    title: 'Dashboard',
                    navigationPath: HomeDashboardRoute,
                  ),
                  SizedBox(height: 10),
                  NavBarItem(
                    icon: Icons.person_outline,
                    title: 'Users',
                    navigationPath: UsersRoute,
                  ),
                  SizedBox(height: 10),
                  NavBarItem(
                    icon: Icons.attach_money_outlined,
                    title: 'Purchase',
                    navigationPath: PurchaseRoute,
                  ),
                  SizedBox(height: 10),
                  NavBarItem(
                    icon: Icons.campaign_outlined,
                    title: 'Announcement',
                    navigationPath: HomeDashboardRoute,
                  ),
                  SizedBox(height: 10),
                  NavBarItem(
                    icon: Icons.announcement_outlined,
                    title: 'Banners',
                    navigationPath: UsersRoute,
                  ),
                  SizedBox(height: 10),
                  NavBarItem(
                    icon: Icons.report_outlined,
                    title: 'Complaint',
                    navigationPath: PurchaseRoute,
                  ),
                  SizedBox(height: 10),
                  NavBarItem(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                    navigationPath: HomeDashboardRoute,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
