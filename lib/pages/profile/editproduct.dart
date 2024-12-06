import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '/appbar.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({super.key});

  @override
  State<EditProduct> createState() => EditProductPage();
}

class EditProductPage extends State<EditProduct> {
  final FormUpdate = GlobalKey<FormState>();
  String productName = "freaky donuts";
  String productPrice = "150000";
  String category = "FREEBASE";
  String description = "Deskripsi";
  String imageAssets = "images/donat.png";
  File? _imageFile;

  List<String> categories = ['FREEBASE', 'SALT NIC', 'OTHER'];

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbareditproduk(),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(7, 201, 255, 1),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        initialValue: productName,
                        decoration: InputDecoration(
                          label: Text('Product Name'),
                        ),
                        onChanged: (Value) => productName = Value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Nama Produk tidak boleh kosong";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: _pickImage,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: _imageFile == null
                                  ? Icon(
                                      Icons.upload,
                                      size: 40,
                                      color: Colors.grey,
                                    )
                                  : Image.file(
                                      _imageFile!,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            Image.asset(
                              'images/donat.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Icon(
                              Icons.upload,
                              size: 30,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        initialValue: productPrice,
                        decoration: InputDecoration(
                          label: Text('Harga'),
                        ),
                        onChanged: (Value) => productPrice = Value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Harga Produk tidak boleh kosong";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      DropdownButtonFormField(
                        value: category,
                        items: categories.map((String category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Text(category),
                          );
                        }).toList(),
                        onChanged: (newValue) =>
                            setState(() => category = newValue!),
                        decoration: InputDecoration(labelText: 'category'),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        initialValue: description,
                        maxLines: 3,
                        decoration: InputDecoration(labelText: 'Deskripsi'),
                        onChanged: (value) => description = value,
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(7, 201, 255, 1),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            if (FormUpdate.currentState!.validate()) {
                              // Logika simpan data
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('Produk berhasil diperbarui')),
                              );
                            }
                          },
                          child: Text(
                            'Simpan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
