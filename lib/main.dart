import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Models/Coffee_Shop.dart';
import 'package:flutter_coffee_shop/Pages/Intro_Page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Intro_Page(),
    ),
    );
  }
}
