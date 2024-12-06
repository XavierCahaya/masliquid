import 'package:flutter/material.dart';
import 'package:masliquid/pages/profile/editprofile.dart';
import 'package:masliquid/pages/profile/history.dart';
import 'splashscreen.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/home.dart';
import 'pages/product.dart';
import 'pages/profile.dart';
import 'pages/cart.dart';
import 'pages/productdetail/popup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "Home": (context) => Home(),
        "Product": (context) => Product(),
        "Profile": (context) => Profile(),
        "Login": (context) => Login(),
        "Cart": (context) => Cart(),
        "ProductDetail": (context) => PopUp(index: 0),
        "SignUp": (context) => SignUp(),
        "ProfileHistory": (context) => History(),
        "EditProfile": (context) => EditProfile(),
      },
    );
  }
}
