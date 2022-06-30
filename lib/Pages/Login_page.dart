import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_course/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    // if (_formkey.currentState.validate()) {
    //   setState(() {
    //     changeButton = true;
    //   });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState() {
      changeButton = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color:context.canvasColor,      
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/welcom.jpeg",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0, child: Text("")),
                Text(
                  "Hello! $name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        // validator: (value) {
                        //   if (value?.isEmptyOrNull){
                        //     return "Username cannot be Empty";
                        //   }else {
                        //     return null;
                        //   }
                        // },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        //  validator: (value) {
                        //    if (value.isEmpty) {
                        //      return "Username cannot be Empty";
                        //   } else if (value.length< 6) {
                        //      return "Username must be at least 6 characters";
                        //    }
                        //    return null;
                        //  },
                      ),
                      SizedBox(height: 20.0),
                      Material(
                        color:context.theme.buttonColor,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          splashColor: Colors.red,
                          onTap: () async {
                            setState(() {
                              changeButton = true;
                            });
                            await Future.delayed(Duration(seconds: 1));
                            await Navigator.pushNamed(
                              context, MyRoutes.homeRoute);

                              setState(() {
                                changeButton = false;
                              });
                          },
                          
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
