import 'package:flutter/material.dart';
import '/appbar.dart';
import '/navbar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => CartPage();
}

class CartPage extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarcart(),
      body: Center(
        child: Text('Keranjang'),
      ),
      bottomNavigationBar: navbar(),
    );
  }
}
