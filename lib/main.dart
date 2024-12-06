import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:masliquid/home.dart';
import 'package:masliquid/product.dart';
=======
import 'package:flutter/rendering.dart';
import 'package:masliquid/pages/profile/editprofile.dart';
import 'package:masliquid/pages/profile/history.dart';
import 'pages/logout.dart';
import 'pages/home.dart';
import 'pages/product.dart';
import 'pages/profile/profile.dart';
import 'pages/cart.dart';
import 'pages/productdetail/product1.dart';
>>>>>>> Stashed changes

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
<<<<<<< Updated upstream
=======
      routes: {
        "Home": (context) => Home(),
        "Product": (context) => Product(),
        "Profile": (context) => Profile(),
        "LogOut": (context) => LogOut(),
        "Cart": (context) => Cart(),
        "Product1": (context) => popup(),
        "ProfileHistory": (context) => History(),
        "EditProfile": (context) => EditProfile(),
      },
>>>>>>> Stashed changes
    );
  }
}
