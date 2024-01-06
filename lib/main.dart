import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pharmecy/screens/coupon_screen.dart';
import 'package:pharmecy/screens/home_screen.dart';
import 'package:pharmecy/screens/pharmacy_screen.dart';
import 'package:pharmecy/screens/profile_screen.dart';
import 'package:pharmecy/screens/saved_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: NavbarScreen());
  }
}

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  final _controller = PersistentTabController();

  List<Widget> _buildScreen() {
    return [
      const HomeScreen(),
      const CouponScreen(),
      const PharmecyScreen(),
      const SavedScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Image(image: AssetImage('assets/icons/homblu.png')),
        inactiveIcon: const Image(image: AssetImage('assets/icons/homgry.png')),
        title: 'Home',
        activeColorPrimary: const Color(0xff0057B8),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Image(
          image: AssetImage('assets/icons/copon.png'),
        ),
        inactiveIcon: const Image(image: AssetImage('assets/icons/copong.png')),
        title: 'Coupons',
        activeColorPrimary: const Color(0xff0057B8),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Image(
          image: AssetImage('assets/icons/phrmablu.png'),
        ),
        inactiveIcon:
            const Image(image: AssetImage('assets/icons/phrmagry.png')),
        title: 'Pharmacies',
        activeColorPrimary: const Color(0xff0057B8),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Image(
          image: AssetImage('assets/icons/savedb.png'),
        ),
        inactiveIcon:
            const Image(image: AssetImage('assets/icons/savedgry.png')),
        title: 'Saved',
        activeColorPrimary: const Color(0xff0057B8),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Image(
          image: AssetImage('assets/icons/personb.png'),
        ),
        inactiveIcon:
            const Image(image: AssetImage('assets/icons/persong.png')),
        title: 'Profile',
        activeColorPrimary: const Color(0xff0057B8),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreen(),
      items: _navBarItems(),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
