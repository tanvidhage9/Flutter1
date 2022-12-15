// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore

import 'package:application_2/homepage.dart';
import 'package:application_2/pages/login_page.dart';
import 'package:application_2/utils/routes.dart';
import 'package:flutter/material.dart';
//import 'pachage:sidebar/MyDrawer.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: avoid_unnecessary_containers
      //home: HomePage(),

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRroute: (context) => LoginPage()
      },
    );
  }
}
