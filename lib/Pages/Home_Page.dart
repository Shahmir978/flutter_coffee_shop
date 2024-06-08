import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Components/CoffeeTile.dart';
import 'package:flutter_coffee_shop/Models/Coffee.dart';
import 'package:provider/provider.dart';

import '../Models/Coffee_Shop.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // add shoe to cart
  void addCoffeetoCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemtoCart(coffee);

    // alert the user that shoe was added to thr cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Added to cart successfully!'),
        content: Text('Check your Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How do you like your coffee?',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.brown.shade600,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    //get a shoe from shoeshop
                    Coffee eachshop = value.coffeeShop[index];
                    // return the shoe list
                    return CoffeeTile(
                      icon: Icon(Icons.arrow_forward_ios),
                      coffee: eachshop,
                      onPressed: () => addCoffeetoCart(eachshop),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
