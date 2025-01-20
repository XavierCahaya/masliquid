import 'package:flutter/material.dart';
import 'package:masliquid/appbar.dart';
import 'package:masliquid/navbar.dart';
import 'package:masliquid/pages/product/detail.dart';
import 'package:masliquid/models/listproduct.dart';
import 'package:masliquid/services/mockapi_service.dart'; // Import fetchProducts

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  ListProductState createState() => ListProductState();
}

class ListProductState extends State<ListProduct> {
  List<Product> products = []; // Menyimpan data produk dari API
  List<Product> cart = []; // Menyimpan data produk yang ditambahkan ke keranjang
  bool isLoading = true; // Status untuk menampilkan indikator loading

  @override
  void initState() {
    super.initState();
    loadProducts(); // Memuat data produk dari API saat inisialisasi
  }

  Future<void> loadProducts() async {
    try {
      final fetchedProducts = await fetchProducts();
      setState(() {
        products = fetchedProducts;
        isLoading = false; // Data selesai dimuat
      });
    } catch (e) {
      setState(() {
        isLoading = false; // Berhenti loading meskipun terjadi error
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal memuat data produk: $e')),
      );
    }
  }

  void addToCart(Product product) {
    setState(() {
      if (!cart.any((item) => item.id == product.id)) {
        cart.add(product);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${product.name} sudah ada di keranjang.'),
          ),
        );
        return;
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} telah ditambahkan ke keranjang.'),
      ),
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
      body: isLoading
          ? const Center(child: CircularProgressIndicator()) // Tampilkan loading
          : products.isEmpty
              ? const Center(child: Text('Tidak ada produk yang tersedia.'))
              : Padding(
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
                              borderRadius: BorderRadius.circular(10),
                            ),
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
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: 125,
                                      height: 125,
                                      child: Image.network(
                                        product.image,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return const Icon(Icons.error);
                                        },
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 30,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          product.name,
                                          maxLines: 2,
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
                                      child: Text(
                                        'Rp${product.price.toStringAsFixed(0)}',
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
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
