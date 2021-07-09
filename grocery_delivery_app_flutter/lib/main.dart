import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:grocery_delivery_app_flutter/screens/login_screen.dart';
import 'package:grocery_delivery_app_flutter/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery Store Delivery App',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.orange,
      ),
      builder: EasyLoading.init(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
