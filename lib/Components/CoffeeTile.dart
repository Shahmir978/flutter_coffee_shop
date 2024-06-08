import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Models/Coffee.dart';

// ignore: must_be_immutable
class CoffeeTile extends StatelessWidget {
  Coffee coffee;
  final Widget icon;
  void Function()? onPressed;
  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey.shade200),
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            coffee.imagePath,
            width: MediaQuery.of(context).size.width * 0.2,
            // height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
