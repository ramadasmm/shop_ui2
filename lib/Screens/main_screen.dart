import 'package:flutter/material.dart';

import 'package:shop_ui/Screens/Cart/cart_screen.dart';
import 'package:shop_ui/Screens/Category/category_screen.dart';
import 'package:shop_ui/Screens/Home/home_screen.dart';
import 'package:shop_ui/Screens/Wishlist/wishlish_screen.dart';
import 'package:shop_ui/Widgets/bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final _pages = const [
    Home(),
    CategoryScreen(),
    WishlistScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: const BottomNavBar());
  }
}
