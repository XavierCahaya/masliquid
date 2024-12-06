import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/login.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(166, 236, 255, 1),
                    Color.fromRGBO(7, 201, 255, 1),
                    Color.fromRGBO(40, 116, 234, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Center(
                  child: Image.asset('images/LOGO.png'),
                ),
              ),
            )
          ],
        ),
        // body: Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 680,
        //         width: 1000,
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //             colors: [
        //               Color.fromRGBO(166, 236, 255, 1),
        //               Color.fromRGBO(7, 201, 255, 1),
        //               Color.fromRGBO(40, 116, 234, 1),
        //             ],
        //             begin: Alignment.topCenter,
        //             end: Alignment.bottomCenter,
        //           ),

        //           image: DecorationImage(
        //             image: AssetImage('images/LOGO.png'),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
