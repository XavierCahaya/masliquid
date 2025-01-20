import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:masliquid/models/listproduct.dart';  // pastikan import model

Future<List<Product>> fetchProducts() async {
  final response = await http.get(
    Uri.parse('https://677a82c8671ca03068341f8a.mockapi.io/masliquid/product'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => Product.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
