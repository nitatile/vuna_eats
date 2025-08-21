import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vuna_eats/pages/profile_page.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'menu_page.dart';
import 'shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //order page
    const ShopPage(),
    //cart
    const CartPage(),
    //profile
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
      Scaffold.of(context).openDrawer();
      },
          icon: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(Icons.menu,
              color: Colors.black,
            ),
          )
      ), ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

                //logo
                DrawerHeader(child: Image.asset(
                  'lib/images/logo-rem.png',)
                ),


                //other pages
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.local_shipping, color: Colors.white,),
                    title: Text(
                      'My Orders',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.location_on, color: Colors.white,),
                    title: Text(
                      'Order Tracking',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.receipt_long, color: Colors.white,),
                    title: Text(
                      'Upload Receipt',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.notifications_on, color: Colors.white,),
                    title: Text(
                      'Notifications',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white,),
                    title: Text(
                      'Log Out',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Row(
                    children: [
                      Text(
                          "Dark Mode",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),
                      ),
                      CupertinoSwitch(
                          value: false,
                          onChanged: (value) {}
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

