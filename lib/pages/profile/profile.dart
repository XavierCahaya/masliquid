import 'package:flutter/material.dart';
import 'package:masliquid/pages/profile/dashboard.dart';
import 'package:masliquid/pages/profile/editprofile.dart';
import 'package:masliquid/pages/profile/history.dart';
import '/appbar.dart';
import '/navbar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => ProfilePage();
}

class ProfilePage extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarprofile(),
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
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 120),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          color: Color.fromRGBO(7, 201, 255, 1),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DashboardAdmin();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  color: Color.fromRGBO(7, 201, 255, 1),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'DASHBOARD',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Color.fromRGBO(7, 201, 255, 1),
                                    child: CircleAvatar(
                                      radius: 29,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.dashboard,
                                            weight: 30, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          color: Color.fromRGBO(7, 201, 255, 1),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return History();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  color: Color.fromRGBO(7, 201, 255, 1),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HISTORY',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Color.fromRGBO(7, 201, 255, 1),
                                    child: CircleAvatar(
                                      radius: 29,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.shop,
                                            weight: 30, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        enabled: false,
                        cursorColor: Color.fromRGBO(7, 201, 255, 1),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email : irenggg@gmail.com',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        obscureText: true,
                        enabled: false,
                        cursorColor: Color.fromRGBO(7, 201, 255, 1),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone : +62 9847 2736 3143',
                          prefixIcon: Icon(Icons.phone_android),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        obscureText: true,
                        enabled: false,
                        cursorColor: Color.fromRGBO(7, 201, 255, 1),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:
                              'Adress : skyline City.san dreeeeeesss.8975',
                          prefixIcon: Icon(Icons.home),
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.black,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return EditProfile();
                                  },
                                ),
                              );
                            },
                            child: Center(
                                child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Column(children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                    image: DecorationImage(
                      image: AssetImage('images/ireng.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Hallo Ireeenggg',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: navbar(),
    );
  }
}
