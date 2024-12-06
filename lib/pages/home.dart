import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'product.dart';
import 'productdetail/popup.dart';
import '/appbar.dart';
import '/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomePage();
}

class HomePage extends State<Home> {
  final List<String> MyImages = [
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
    'images/donat.png',
  ];

  final List<String> ProductName = [
    'Fcukin Donuts Blueberry',
    'Fcukin Donuts Strawberry',
    'Fcukin Donuts Cerry',
    'Fcukin Donuts Ice Tea',
    'Fcukin Donuts Melon',
    'Fcukin Donuts Banana',
    'Fcukin Donuts Teh Cina',
    'Fcukin Donuts Sego Goreng',
    'Fcukin Donuts Sate Pak Lis',
    'Fcukin Donuts Gorengan Mbak Yayuk',
  ];

  final List<String> ProductPrice = [
    'Rp.150.000,00',
    'Rp.100.000,00',
    'Rp.50.000,00',
    'Rp.375.000,00',
    'Rp.40.000,00',
    'Rp.250.000,00',
    'Rp.350.000,00',
    'Rp.50.000,00',
    'Rp.70.000,00',
    'Rp.80.000,00',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarhome(),
      body: Column(
        children: [
          //search
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(40),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 30,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          //gambar promo tengah
          Padding(
            padding: EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 352 / 118,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/homepromo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          //kabeh grid produk
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.0,
              ),
              itemCount: MyImages.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(166, 236, 255, 1),
                          Color.fromRGBO(7, 201, 255, 1),
                          Color.fromRGBO(40, 116, 234, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                //untuk buka class popup(munculin popup detail produk)
                                return PopUp(index: index);
                              },
                            );
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              //gambar produk
                              Positioned(
                                top: constraints.maxHeight * 0.15,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(MyImages[index]),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  width: constraints.maxWidth * 0.7,
                                  height: constraints.maxHeight * 0.4,
                                ),
                              ),
                              //nama produk
                              Positioned(
                                top: constraints.maxHeight * 0.65,
                                child: Container(
                                  width: constraints.maxWidth * 0.9,
                                  child: Text(
                                    ProductName[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: constraints.maxWidth * 0.08,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: navbar(),
    );
  }
}
