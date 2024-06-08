import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MYGnavigationbar extends StatelessWidget {
  void Function(int)? onTabChange;
  MYGnavigationbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey.shade400,
      activeColor: Colors.grey.shade700,
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      gap: 12,
      onTabChange: (value) => onTabChange!(value),
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Shop',
          margin: EdgeInsets.only(right: 30),
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
          margin: EdgeInsets.only(left: 30),

        ),
      ],
    );
  }
}
