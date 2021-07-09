import 'package:flutter/material.dart';
import 'package:grocery_delivery_app_flutter/screens/login_screen.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  var _emailTextController = TextEditingController();
  var _passwordTextController = TextEditingController();
  var _cPasswordTextController = TextEditingController();
  var _addressTextController = TextEditingController();
  var _nameTextController = TextEditingController();
  String email = "abc@gmail.com";
  String password = "123456";
  String name = "shreyash";
  String mobile = "9071223344";
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    scaffoldMessage(message) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }

    return _isLoading
        ? CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
          )
        : Form(
            child: Column(),
          );
  }
}
