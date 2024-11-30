import 'package:flutter/material.dart';

class appbarproduct extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 60,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
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
                Icons.logout,
                color: Color.fromRGBO(40, 116, 234, 1),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "LogOut");
              },
            ),
          ),
        ),

        //judul home
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Center(
            child: Text(
              "Product",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(40, 116, 234, 1),
              ),
            ),
          ),
        ),

        //border lingkaran keranjang
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
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
                  Icons.shopping_cart_checkout_outlined,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "Cart");
                },
              ),
            ),
          ),

          //border profil
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('images/ireng.jpg'),
                  fit: BoxFit.cover,
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
            ),
          ),
        ],
      )),
    );
  }
}

class appbarhome extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 60,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
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
                  Icons.logout,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "LogOut");
                },
              ),
            ),
          ),

          //judul home
          title: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Center(
              child: Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
              ),
            ),
          ),

          //border lingkaran keranjang
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
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
                    Icons.shopping_cart_checkout_outlined,
                    color: Color.fromRGBO(40, 116, 234, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),

            //border profil
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('images/ireng.jpg'),
                    fit: BoxFit.cover,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class appbarprofile extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 60,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
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
                  Icons.logout,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "LogOut");
                },
              ),
            ),
          ),

          //judul home
          title: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
              ),
            ),
          ),

          //border lingkaran keranjang
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
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
                    Icons.shopping_cart_checkout_outlined,
                    color: Color.fromRGBO(40, 116, 234, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class appbarcart extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 60,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
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
                  Icons.logout,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "LogOut");
                },
              ),
            ),
          ),

          //judul home
          title: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Center(
              child: Text(
                "Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(40, 116, 234, 1),
                ),
              ),
            ),
          ),

          //border lingkaran keranjang
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
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
                    Icons.shopping_cart_checkout_outlined,
                    color: Color.fromRGBO(40, 116, 234, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),

            //border profil
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('images/ireng.jpg'),
                    fit: BoxFit.cover,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
