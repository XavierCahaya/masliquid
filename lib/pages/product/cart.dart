import 'package:flutter/material.dart';
import 'package:masliquid/appbar.dart';
import 'package:masliquid/models/listproduct.dart';

class CartPage extends StatefulWidget {
  final List<Product> cart;

  const CartPage({super.key, required this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Map<Product, int> productCounts = {};

  @override
  void initState() {
    super.initState();
    widget.cart.forEach((product) {
      productCounts[product] = (productCounts[product] ?? 0) + 1;
    });
  }

  void increaseQuantity(Product product) {
    setState(() {
      productCounts[product] = (productCounts[product] ?? 0) + 1;
    });
  }

  void decreaseQuantity(Product product) {
    setState(() {
      if (productCounts[product]! > 1) {
        productCounts[product] = productCounts[product]! - 1;
      } else {
        productCounts.remove(product);
        widget.cart.remove(product);
      }
    });
  }

  void removeProduct(Product product) {
    // Menghapus produk
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hapus Produk'),
        content:
            Text('Apakah Anda yakin ingin menghapus produk ${product.name}?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                productCounts.remove(product);
                widget.cart.remove(product);
              });
              Navigator.of(context).pop();
            },
            child: const Text('Hapus'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const appbarcart(),
      body: widget.cart.isEmpty
          ? const Center(child: Text('Cart Kosong.'))
          : GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.7,
              ),
              itemCount: widget.cart.length,
              itemBuilder: (context, index) {
                final product = widget.cart[index];
                return Card(
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
                    child: Stack(
                      children: [
                        Positioned(
                            child: Column(
                          children: [
                            Image.network(
                              product.image,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text(
                                  product.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Center(
                              child: Text(
                                '\Rp${product.price.toStringAsFixed(3)}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                        Positioned(
                          bottom: 10,
                          left: 20,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: () => decreaseQuantity(product),
                                    icon: const Icon(Icons.remove),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '${productCounts[product] ?? 0}',
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: () => increaseQuantity(product),
                                    icon: const Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Transform.rotate(
                              angle: 3.14 / 4,
                              child: IconButton(
                                  onPressed: () => removeProduct(product),
                                  icon: Icon(Icons.add)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
