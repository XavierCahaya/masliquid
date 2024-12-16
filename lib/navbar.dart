import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Colors.white,
          ),
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Produk");
              },
              child: const Icon(
                Icons.format_list_bulleted,
                size: 35,
                color: Color.fromRGBO(40, 116, 234, 1),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Home");
              },
              child: const Icon(
                Icons.home,
                size: 35,
                color: Color.fromRGBO(40, 116, 234, 1),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Profile");
              },
              child: const Icon(
                Icons.person,
                size: 35,
                color: Color.fromRGBO(40, 116, 234, 1),
              ),
            ),
          ],
        ));
  }
}
