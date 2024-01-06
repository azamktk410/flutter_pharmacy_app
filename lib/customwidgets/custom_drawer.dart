import 'package:flutter/material.dart';
import 'package:pharmecy/screens/coupon_screen.dart';
import 'package:pharmecy/screens/pharmacy_screen.dart';
import 'package:pharmecy/screens/saved_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff0057B8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/azam.jpg'),
                  radius: 40,
                ),
                Text(
                  'Azam Mehmood',
                  style: TextStyle(
                      fontFamily: 'Playfair Display',
                      fontWeight: FontWeight.w900,
                      fontSize: 19,
                      color: Colors.white),
                ),
                Text(
                  'azamktk410@gmai.com',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Image(
              image: AssetImage('assets/icons/homblu.png'),
              height: 20,
            ),
            onTap: () {
              // Handle item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
              title: const Text('Coupons'),
              leading: const Image(
                image: AssetImage('assets/icons/copon.png'),
                height: 20,
              ),
              onTap: () {
                // Handle item tap
                Navigator.pop(context);
              }),
          ListTile(
            title: const Text('pharmecy'),
            leading: const Image(
              image: AssetImage('assets/icons/phrmablu.png'),
              height: 20,
            ),
            onTap: () {
              // Handle item tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Saved'),
            leading: const Image(
              image: AssetImage('assets/icons/savedb.png'),
              height: 20,
            ),
            onTap: () {
              // Handle item tap
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
