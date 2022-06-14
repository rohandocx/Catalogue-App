import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
      child: Text(
        "Login Page",
        style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 0, 136, 255),
            fontWeight: FontWeight.bold),
      ),
    ));
  }
}
