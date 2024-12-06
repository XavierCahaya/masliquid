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
                Navigator.pushNamed(context, "Login");
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
                  Icons.shopping_cart_outlined,
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
                  Navigator.pushNamed(context, "Login");
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
                    Icons.shopping_cart_outlined,
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
          backgroundColor: Color.fromRGBO(7, 201, 255, 1),
          //judul home
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Profile',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
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

class appbarhistorydetail extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color.fromRGBO(7, 201, 255, 1),
          //judul
          title: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Detail History',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
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

class appbarhistory extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(7, 201, 255, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //judul
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'History',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
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

class appbardashboard extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(7, 201, 255, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              // Kembali ke halaman sebelumnya
              Navigator.pop(context);
            },
          ),
          //judul
          title: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Dashboard',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
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
                    Icons.logout,
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('images/ireng.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class appbareditproduk extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(7, 201, 255, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              // Kembali
              Navigator.pop(context);
            },
          ),
          //judul
          title: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Update',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
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
                    Icons.logout,
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('images/ireng.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class appbaraddproduk extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(7, 201, 255, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              // Kembali
              Navigator.pop(context);
            },
          ),
          //judul
          title: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Tambah Produk',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
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
                    Icons.logout,
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('images/ireng.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class appbareditprofile extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(7, 201, 255, 1),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //judul
          title: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'Edit Profile',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "Cart");
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
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
                    color: Color.fromRGBO(7, 201, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "LogOut");
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
                  Navigator.pushNamed(context, "Login");
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
                    Icons.shopping_cart_outlined,
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
