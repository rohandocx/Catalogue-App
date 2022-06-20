import 'package:flutter/material.dart';
import 'package:flutter_course/utils/routes.dart';
import 'Pages/Login_page.dart';
import 'Pages/Home_page.dart';
// ignore: unused_import
import 'Themes/Themes.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        MyRoutes.loginRoute: (context) => Homepage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        "/": (context) => LoginPage(),
      },
    );
  }
}
