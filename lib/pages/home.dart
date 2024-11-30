import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'product.dart';
import 'profile.dart';
import 'productdetail/product1.dart';
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

  final List<String> Product = [
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
                            showCupertinoModalPopup(
                                context: context,
                                builder: (BuildContext builder) {
                                  return CupertinoPopupSurface(
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
                                        alignment: Alignment.center,
                                        width: 400,
                                        height: 400,
                                        child: Stack(
                                          children: [
                                            ///jek progres, ojo diubah
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 2,
                                                        blurRadius: 10,
                                                        offset: Offset(0, 3),
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.white,
                                                  ),
                                                  child: Image.asset(
                                                    MyImages[index],
                                                    width: 200,
                                                    height: 200,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Text(
                                                  Product[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Container(
                                                  width: 350,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 2,
                                                        blurRadius: 10,
                                                        offset: Offset(0, 3),
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                  );
                                  ///jek progres, ojo diubah
                                });
                          },

                          ///////////
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
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
                              Positioned(
                                top: constraints.maxHeight * 0.65,
                                child: Container(
                                  width: constraints.maxWidth * 0.9,
                                  child: Text(
                                    Product[index],
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