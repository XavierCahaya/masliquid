import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'splashscreen.dart';
import 'pages/logout.dart';
import 'pages/home.dart';
import 'pages/product.dart';
import 'pages/profile.dart';
import 'pages/cart.dart';
import 'pages/productdetail/product1.dart';
import 'navbar.dart';
import 'appbar.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        "Home": (context) => Home(),
        "Product": (context) => Product(),
        "Profile": (context) => Profile(),
        "LogOut": (context) => LogOut(),
        "Cart": (context) => Cart(),
        "Product1": (context) => popup(),
      },
    );
  }
}
