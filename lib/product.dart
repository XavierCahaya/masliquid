import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

main() {}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Product(),
    );
  }
}

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => ProductPage();
}

class ProductPage extends State<Product> {
  final List<Container> myList = List.generate(10, (index) {
    return Container(
      child: Center(
        child: Text(
          "Gambar Produk",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      color: Colors.blue,
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Product",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.0,
              ),
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return myList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
