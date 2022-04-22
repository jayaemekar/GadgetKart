import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import './profile/profile_screen.dart';
import './cart/orders_screen.dart';
import './home/home_screen.dart';

class TapScreen extends StatefulWidget {
  static const id = 'TapScreen';

  const TapScreen({Key? key}) : super(key: key);

  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  int _seletedPageIndex = 0;
  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomeScreen(),
      'title': const Text(
        "Home For Gadgets!"
      ),
    },
    {
      'page': const OrderScreen(),
      'title': const Text(
        "Orders",
      ),
    },
    {
      'page': const ProfileScreen(),
      'title': const Text(
        "My Profile",
      ),
    },
  ];

  void _selectPage(int index) {
    setState(() {
      _seletedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_seletedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: kPrimaryColor,
        currentIndex: _seletedPageIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _selectPage,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "My Profile",
          ),
        ],
      ),
    );
  }
}
