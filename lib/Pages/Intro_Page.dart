import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Pages/navigation_bar.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Center(
              child: Image.asset(
                "assets/images/coffee-logo.png",
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Column(
              children: [
                Text(
                  'Brew Day',
                  style: TextStyle(
                      color: Colors.brown.shade600,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'How do you like your coffee?',
                  style: TextStyle(
                      color: Colors.brown.shade700,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => navigationbar()));
              },
              child: Text(
                'Enter Shop',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.brown.shade400,
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
            )
          ],
        ),
      ),
    );
  }
}
