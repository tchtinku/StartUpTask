import 'package:flutter/material.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/sidebar/sidebar_layout.dart';





class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white
      ),
      home: SideBarLayout(),
    );
  }
}