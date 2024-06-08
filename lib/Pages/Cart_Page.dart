import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Components/CoffeeTile.dart';
import 'package:flutter_coffee_shop/Models/Coffee.dart';
import 'package:flutter_coffee_shop/Models/Coffee_Shop.dart';
import 'package:provider/provider.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({super.key});

  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
//remove from cart
  void removeItemfromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemfromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Cart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.userCart[index];
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeItemfromCart(eachCoffee),
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Pay now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
