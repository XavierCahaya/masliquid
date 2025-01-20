import 'package:flutter/material.dart';
import 'package:masliquid/appbar.dart';
import 'package:masliquid/navbar.dart';
import 'package:masliquid/pages/product/detail.dart';
import 'package:masliquid/models/listproduct.dart';
import 'package:masliquid/services/mockapi_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ListProductHome createState() => ListProductHome();
}

class ListProductHome extends State<Home> {
  List<Product> products = [];
  List<Product> cart = []; // Keranjang untuk menyimpan produk
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      final fetchedProducts = await fetchProducts();
      setState(() {
        products = fetchedProducts;
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        errorMessage = 'Failed to load products. Please try again later.';
        isLoading = false;
      });
    }
  }

  void addToCart(Product product) {
    setState(() {
      // Cek jika produk sudah ada di keranjang
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
      appBar: appbarhome(keranjang: cart),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  color: Colors.white,
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Search Disini...",
                          hintStyle: TextStyle(fontSize: 15),
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onChanged: (value) {
                          print("Search query: $value");
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Promo image
          Padding(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 352 / 118,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/homepromo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Product grid
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : errorMessage.isNotEmpty
                    ? Center(child: Text(errorMessage))
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                                              onPressed: () =>
                                                  addToCart(product),
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: SizedBox(
                                            width: 225,
                                            height: 125,
                                            child: Image.network(
                                              product.image,
                                              fit: BoxFit.cover,
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                return Center(
                                                  child: Text(
                                                    'Gambar tidak tersedia',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Center(
                                              child: Text(
                                                maxLines: 2,
                                                product.name,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
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
                                              'Rp${product.price.toStringAsFixed(3)}',
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
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
          ),
        ],
      ),
      bottomNavigationBar: const navbar(),
    );
  }
}
