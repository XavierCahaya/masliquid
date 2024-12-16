import 'package:flutter/material.dart';
import 'package:masliquid/appbar.dart';
import 'package:masliquid/navbar.dart';
import 'package:masliquid/pages/product/detail.dart';
import 'package:masliquid/models/listproduct.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  ListProductState createState() => ListProductState();
}

class ListProductState extends State<ListProduct> {
  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('${product.name} telah ditambahkan ke keranjang.')),
    );
  }

  void showProductDetails(Product product) {
    showDialog(
      context: context,
      builder: (context) {
        return ShowProductDetails(
          product: product,
          addToCart: addToCart,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarProduct(cart: cart),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () => showProductDetails(product),
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(166, 236, 255, 1),
                          Color.fromRGBO(7, 201, 255, 1),
                          Color.fromRGBO(40, 116, 234, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add_shopping_cart_sharp,
                                ),
                                onPressed: () => addToCart(product),
                              ),
                            )),
                        Center(
                          child: SizedBox(
                            width: 125,
                            height: 125,
                            child: Image.asset(
                              product.image,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                maxLines: 2,
                                product.name,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text('Rp${product.price.toStringAsFixed(3)}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const navbar(),
    );
  }
}
