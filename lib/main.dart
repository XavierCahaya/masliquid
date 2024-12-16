import 'package:flutter/material.dart';
import 'package:masliquid/pages/product/product.dart';
import 'package:masliquid/pages/profile/editprofile.dart';
import 'package:masliquid/pages/profile/history.dart';
import 'package:masliquid/pages/profile/profile.dart';
import 'splashscreen.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "Home": (context) => const Home(),
        "Profile": (context) => const Profile(),
        "Login": (context) => const Login(),
        "Produk": (context) => const ListProduct(),
        "SignUp": (context) => const SignUp(),
        "ProfileHistory": (context) => const History(),
        "EditProfile": (context) => const EditProfile(),
      },
    );
  }
}
