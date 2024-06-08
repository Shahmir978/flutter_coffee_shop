import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Components/Gnav_bar.dart';
import 'package:flutter_coffee_shop/Pages/Cart_Page.dart';
import 'package:flutter_coffee_shop/Pages/Home_Page.dart';
import 'package:flutter_coffee_shop/Pages/Intro_Page.dart';

class navigationbar extends StatefulWidget {
  const navigationbar({super.key});

  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Home_Page(),
    const Cart_Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/coffee-logo.png',
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => navigationbar()));
                    },
                    leading: Icon(
                      Icons.home,
                      color: Colors.brown.shade700,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.brown.shade700),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.brown.shade700,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.brown.shade700),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Intro_Page()));
                },
                leading: Icon(
                  Icons.logout,
                  color: Colors.brown.shade700,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.brown.shade700),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MYGnavigationbar(
        onTabChange: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
