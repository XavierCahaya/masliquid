class Product {
  final String name;
  final String description;
  final String category;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.image,
  });
}

final List<Product> products = [
  Product(
    name: 'Fcukin Donuts Blueberry',
    description: 'Perisa Blueberry dan extra dingin',
    category: 'PODS',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Strawberry',
    description: 'Perisa Strawberry dan extra dingin',
    category: 'PODS',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Cerry',
    description: 'Perisa Cerry dan extra dingin',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Ice Tea',
    description: 'Perisa Ice Tea dan extra dingin',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Melon',
    description: 'Perisa Melon dan extra dingin',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Banana',
    description: 'Perisa Pisang dan extra dingin',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Teh Cina',
    description: 'Perisa Teh Cina asli dan extra dingin',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Sego Goreng',
    description: 'Perisa Sego Goreng Gratis',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Sate Pak Lis',
    description:
        'Dengan perasa kelek pak lis dan sensasi creamy bokonge rizal memberikan kenikmatan setiap hisapannya',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
  Product(
    name: 'Fcukin Donuts Gorengan Mbak Yayuk ',
    description: 'Perisa Donate Mbak Yayuk',
    category: 'Donuts',
    price: 150.000,
    image: 'images/donat.png',
  ),
];
List<Product> cart = [];
