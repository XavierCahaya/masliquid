import 'package:flutter/material.dart';
import 'package:masliquid/appbar.dart';
import 'package:masliquid/pages/profile/historydetail.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarhistory(),
      body: Stack(
        children: [
          // Latar belakang hitam
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          // Header dengan warna biru
          Container(
            width: double.infinity,
            height: 40,
            color: Color.fromRGBO(7, 201, 255, 1),
          ),
          // ListView dengan Positioned
          Positioned(
            top: 50, // Pastikan tidak tertutup header
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: List.generate(10, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Color.fromRGBO(7, 201, 255, 1),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return HistoryDetail();
                                },
                              ),
                            );
                          },
                          child: ListTile(
                            leading:
                                Icon(Icons.shopping_bag, color: Colors.white),
                            title: Text(
                              'Item Barang ${index + 3}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Tanggal: 05-0${index}-2024',
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(Icons.info, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
