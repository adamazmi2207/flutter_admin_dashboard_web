import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/theme/color/colors.dart';
import 'package:flutter_admin_dashboard_web/widgets/charts/bar_chart_widget.dart';
import 'package:flutter_admin_dashboard_web/widgets/charts/donut_chart.dart';
import 'package:flutter_admin_dashboard_web/widgets/charts/revenue_chart.dart';
import 'package:flutter_admin_dashboard_web/widgets/charts/sales_chart.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(),
          Body(),
        ],
      ),
      backgroundColor: kPrimaryBlack,
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 30, bottom: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kLightBlack,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                BodyTop(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DashboardMiniCard(
                      icon: Icons.person_outline,
                      iconColor: Colors.deepOrangeAccent,
                      title: '2,000',
                      subTitle: 'Active Users',
                      accentColor: Colors.deepOrangeAccent.withOpacity(0.1),
                    ),
                    DashboardMiniCard(
                      icon: Icons.attach_money_outlined,
                      iconColor: kTeal,
                      title: '\$10,000',
                      subTitle: 'Total Sales',
                      accentColor: kTeal.withOpacity(0.1),
                    ),
                    DashboardMiniCard(
                      icon: Icons.report_outlined,
                      iconColor: Colors.redAccent,
                      title: '15',
                      subTitle: 'Unresolved Reports',
                      accentColor: Colors.redAccent.withOpacity(0.1),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(child: SalesChart()),
                // BarChartSample1(),
                // RevenueChart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardMiniCard extends StatelessWidget {
  final Color accentColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;
  const DashboardMiniCard(
      {Key key,
      this.accentColor,
      this.icon,
      this.title,
      this.subTitle,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
          colors: [
            kPrimaryBlack.withOpacity(0.6),
            accentColor,
          ],
          stops: const [0.70, 4.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryBlack.withOpacity(0.8),
            blurRadius: 6.0,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 5, bottom: 10, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: iconColor,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.white30,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                print('more Icon Button Clicked');
              },
              icon: Icon(Icons.more_vert_rounded),
              color: Colors.white30,
            ),
          ],
        ),
      ),
    );
  }
}

class BodyTop extends StatelessWidget {
  const BodyTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Dashboard',
          style: TextStyle(
            color: kWhite,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.4,
          ),
        ),
        OutlineButton.icon(
          onPressed: () {
            print('filters button pressed');
          },
          borderSide: BorderSide(color: kWhite),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          // color: kWhite,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          icon: Icon(
            Icons.filter_list_outlined,
            color: kWhite,
          ),
          label: Text(
            'Filters',
            style: TextStyle(
              color: kWhite,
            ),
          ),
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 25, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: kLightBlack,
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(Icons.search_outlined),
                ),
              ),
            ),
          ),
          Row(
            children: [
              TopBarIcon(icon: Icons.notifications_outlined),
              TopBarIcon(icon: Icons.chat_outlined),
              TopBarIcon(icon: Icons.card_giftcard_outlined),
              TopBarIcon(icon: Icons.settings_outlined)
            ],
          ),
        ],
      ),
    );
  }
}

class TopBarIcon extends StatelessWidget {
  const TopBarIcon({
    Key key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kLightBlack),
        child: IconButton(
          icon: Icon(icon, color: kWhite),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
