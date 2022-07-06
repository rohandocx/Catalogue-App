import 'package:flutter/material.dart';
import 'package:flutter_course/utils/routes.dart';
import 'Pages/Login_page.dart';
import 'Pages/Home_page.dart';
import 'Pages/cart_page.dart';
import 'Themes/Themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.darkTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.cartRoute: (context) => CartPage(), 
        "/": (context) => LoginPage(),
      },
    );
  }
}
