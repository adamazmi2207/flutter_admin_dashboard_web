import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/theme/color/colors.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TopBar(), Body()],
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    OutlineButton.icon(
                      onPressed: () {
                        print('filters button pressed');
                      },
                      borderSide: BorderSide(color: kWhite),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      // color: kWhite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
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
                ),
              ],
            ),
          ),
        ),
      ),
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
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
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
