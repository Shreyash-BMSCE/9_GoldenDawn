import 'package:flutter/material.dart';
import 'package:grocery_delivery_app_flutter/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'register-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  RegisterForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
