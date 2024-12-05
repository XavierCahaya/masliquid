import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Detail extends StatelessWidget {
  final int index;

  Detail({Key? key, required this.index}) : super(key: key);

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

  final List<String> ProductDetail = [
    'Perisa Blueberry dan extra dingin',
    'Perisa Strawberry dan extra dingin',
    'Perisa Cerry dan extra dingin',
    'Perisa Ice Tea dan extra dingin',
    'Perisa Melon dan extra dingin',
    'Perisa Pisang dan extra dingin',
    'Perisa Teh cina asli dan extra dingin',
    'Perisa Sego Goreng Gratis',
    'Dengan perasa kelek pak lis dan sensasi creamy bokonge rizal memberikan kenikmatan setiap hisapannya',
    'Perisa Donate Mbak Yayuk',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 350,
                height: 70,
                child: ListTile(
                  title: Text(
                    ProductName[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Ukuran : 60ml',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Nicotine : 3mg/6mg',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      Text(ProductDetail[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                          maxLines: 2),
                    ],
                  ),
                ),
              ),
            ),
            //kotak harga
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    ProductPrice[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                width: 200,
                height: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
