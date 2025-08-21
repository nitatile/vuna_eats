import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.green,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 500,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
          ),
          GButton(
            icon: Icons.shopping_basket_rounded,
          ),
          GButton(
            icon: Icons.person_rounded,
          ),
        ],
      ),
    );
  }
}
