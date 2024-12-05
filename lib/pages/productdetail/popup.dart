import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'detail.dart';

class PopUp extends StatelessWidget {
  final int index;

  PopUp({Key? key, required this.index}) : super(key: key);

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
    'Rp.150.000,00',
    'Rp.150.000,00',
    'Rp.50.000,00',
    'Rp.150.000,00',
    'Rp.150.000,00',
    'Rp.350.000,00',
    'Rp.50.000,00',
    'Rp.70.000,00',
    'Rp.80.000,00',
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: EdgeInsets.zero,
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
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
        width: 400,
        height: 400,
        child: Stack(
          children: [
            //tulisan kategori pods
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'PODS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            //lingkaran add keranjang
            Positioned(
              top: 35,
              right: 25,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
            //gambar produk
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15),                  
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      MyImages[index],
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    ProductName[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  //kotak detail produk
                  Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),

                    //isi detail produk
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Detail(index: index),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
