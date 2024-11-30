import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '/navbar.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => LogOutPage();
}

class LogOutPage extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "LogOut",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.login,
            color: Color.fromRGBO(40, 116, 234, 1),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "Home");
          },
        ),
      ),
    );
  }
}
