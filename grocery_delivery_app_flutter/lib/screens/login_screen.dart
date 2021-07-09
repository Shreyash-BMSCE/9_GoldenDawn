import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _visible = false;
  var _emailTextController = TextEditingController();
  String email = "abc@gmail.com";
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/logo.png',
                          height: 70,
                          width: 70,
                        ),
                        FittedBox(
                          child: Text(
                            'DELIVERY APP - LogIn',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'arial',
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: _emailTextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Email';
                      }
                      final bool _isValid =
                          EmailValidator.validate(_emailTextController.text);
                      if (!_isValid) {
                        return 'Email invalidate';
                      }
                      setState(() {
                        email = value;
                      });
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(),
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      focusColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 6) {
                        return 'Password minimum 6 characters';
                      }
                      setState(() {
                        password = value;
                      });
                      return null;
                    },
                    obscureText: _visible == false ? true : false,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: _visible
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _visible = !_visible;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(),
                        contentPadding: EdgeInsets.zero,
                        hintText: 'password',
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        focusColor: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            print("ontap");
                          },
                          child: Text(
                            'Forgot Password ? ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            print("button pressed");
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
