import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
   
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,   
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        
         toolbarTextStyle: TextStyle(color: Colors.black),
           titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,     
      canvasColor: darkcreamColor,
      //  toggleableActiveColor:darkblueColor ,
   
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),

          toolbarTextStyle: TextStyle(color: Colors.white),
           titleTextStyle: Theme.of(context).textTheme.headline6,
  ));

  //Colors
  static Color darkcreamColor = Vx.gray900;
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkblueColor = Color(0xff403b58);
  static Color lightBlueColor = Vx.indigo500;
}
