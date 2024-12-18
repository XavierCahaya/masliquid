import 'package:flutter/material.dart';
import 'package:masliquid/appbar.dart';
import 'package:masliquid/pages/profile/historydetail.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const appbarhistory(),
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
            color: const Color.fromRGBO(7, 201, 255, 1),
          ),
          // ListView dengan Positioned
          Positioned(
            top: 50, // Pastikan tidak tertutup header
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: const Color.fromRGBO(7, 201, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HistoryDetail();
                                },
                              ),
                            );
                          },
                          child: ListTile(
                            leading: const Icon(Icons.shopping_bag,
                                color: Colors.white),
                            title: Text(
                              'Item Barang ${index + 3}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Tanggal: 05-0$index-2024',
                              style: const TextStyle(color: Colors.white),
                            ),
                            trailing:
                                const Icon(Icons.info, color: Colors.white),
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
