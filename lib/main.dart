import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_web/locator.dart';
import 'package:flutter_admin_dashboard_web/pages/layout_template/layout_template.dart';
import 'package:flutter_admin_dashboard_web/pages/nav_bar/nav_bar.dart';
import 'package:flutter_admin_dashboard_web/theme/color/colors.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: kTeal,
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      // darkTheme: ThemeData.dark(),
      home: LayoutTemplate(),
    );
  }
}
