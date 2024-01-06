import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  const CustomAppBar({super.key, required this.context});

  @override
  Size get preferredSize {
    // Calculate the preferred size based on the screen height
    double screenHeight = MediaQuery.sizeOf(context).height;
    double preferredHeight =
        screenHeight * 0.12; // You can adjust this multiplier as needed
    return Size.fromHeight(preferredHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 10,
        child: Image(
            width: MediaQuery.of(context).size.width,
            height: 390,
            color: const Color(0xffffffff).withOpacity(0.8),
            image: const AssetImage('assets/images/hmbackone.png')),
      ),
      Positioned(
          top: -50,
          child: Image(
              width: MediaQuery.of(context).size.width,
              height: 425,
              color: const Color(0xffffffff).withOpacity(0.7),
              image: const AssetImage('assets/images/hmbacktwo.png'))),
      Positioned(
          top: 25,
          child: Image(
              width: MediaQuery.of(context).size.width,
              height: 425,
              color: const Color(0xffffffff).withOpacity(0.98),
              image: const AssetImage('assets/images/hmbackthre.png'))),
      SizedBox(
        height: preferredSize.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 13,
            right: 13,
            top: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu icon
              GestureDetector(
                onTap: () {
                  // Open the drawer when the menu icon is tapped
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(21)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/icons/menu.png'),
                    ),
                  ),
                ),
              ),

              const Text(
                '9jaRx',
                style: TextStyle(
                    fontFamily: 'Monologue DEMO',
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff)),
              ),
              const SizedBox(
                height: 44,
                width: 44,
                child: Image(
                  image: AssetImage('assets/images/hs.png'),
                ),
              ),
              // AppBar container end
            ],
          ),
        ),
      ),
    ]);
  }
}
