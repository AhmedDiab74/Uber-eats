import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:ubereats/view/account/account.dart';
import 'package:ubereats/view/basket/basket.dart';
import 'package:ubereats/view/browse/browse.dart';
import 'package:ubereats/view/grocery/grocery.dart';
import 'package:ubereats/view/home/home.dart';

class BottomNavigationBarUberEats extends StatefulWidget {
  const BottomNavigationBarUberEats({super.key});

  @override
  State<BottomNavigationBarUberEats> createState() =>
      _BottomNavigationBarUberEatsState();
}

class _BottomNavigationBarUberEatsState
    extends State<BottomNavigationBarUberEats> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.house),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const BrowseScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
            title: "Browse",
          ),
        ),
        PersistentTabConfig(
          screen: const GroceryScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.basketShopping),
            title: "Grocery ",
          ),
        ),
        PersistentTabConfig(
          screen: const BasketScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.cartShopping),
            title: "Basket",
          ),
        ),
        PersistentTabConfig(
          screen: const AccountScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.person),
            title: "Account",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
