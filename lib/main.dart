import 'package:flutter/material.dart';
import 'Pages/Login_page.dart';
import 'Pages/Home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/login": (context) => Homepage(),
        "/home": (context) => Homepage(),
        "/": (context) => LoginPage(),
      },
    );
  }
}
