import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_delivery_app_flutter/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, LoginScreen.id);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/logo.png'),
            Text(
              'Grocery Store - Delivery App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
