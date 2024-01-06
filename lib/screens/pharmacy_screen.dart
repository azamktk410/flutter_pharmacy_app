import 'package:flutter/material.dart';
import 'package:pharmecy/screens/pharmecy_map.dart';
import 'package:pharmecy/widgets/favorites_screen.dart';
import 'package:pharmecy/widgets/nearby_screen.dart';
import 'package:pharmecy/widgets/recents_screen.dart';

class PharmecyScreen extends StatefulWidget {
  const PharmecyScreen({super.key});

  @override
  State<PharmecyScreen> createState() => _PharmecyScreenState();
}

class _PharmecyScreenState extends State<PharmecyScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0xff0057B8),
          body: SafeArea(
            child: Stack(children: [
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .1,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 9, bottom: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(21)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Image(
                                    image: AssetImage('assets/icons/menu.png'),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Pharmacies',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PharmecyMap()));
                              },
                              child: Container(
                                width: 78,
                                height: 42,
                                decoration: const BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18))),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image(
                                          width: 17,
                                          height: 17,
                                          image: AssetImage(
                                              'assets/icons/map.png')),
                                      Text(
                                        'Map',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xff1D1D1D),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      height: height * 1.2,
                      decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 55,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: const Card(
                                    elevation: 1,
                                    child: Center(
                                      child: Image(
                                          width: 18,
                                          height: 18,
                                          image: AssetImage(
                                              'assets/icons/searchgry.png')),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 280,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffEDEDED),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Pharmacies with offers',
                                          hintStyle: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff1D1D1D),
                                          ),
                                          suffixIcon: Image(
                                              width: 10,
                                              height: 6,
                                              image: AssetImage(
                                                  'assets/icons/down.png'))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Color(0xffEDEDED),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: const TabBar(
                                  labelColor: Colors.white,
                                  unselectedLabelColor: Colors.black,
                                  indicator: BoxDecoration(
                                      color: Color(0xff0057B8),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  tabs: [
                                    Tab(
                                        child: Text(
                                      'Nearby',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )),
                                    Tab(
                                        child: Text(
                                      'Favorites',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )),
                                    Tab(
                                        child: Text(
                                      'Recents',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )),
                                  ]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Expanded(
                              child: TabBarView(children: [
                                //neraby column
                                NearbyScreen(),

                                //favorites column,
                                FavoritesScreen(),

                                //recents column
                                RecentsScreen()
                              ]),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
