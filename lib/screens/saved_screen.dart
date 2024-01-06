import 'package:flutter/material.dart';
import 'package:pharmecy/widgets/card_one.dart';
import 'package:pharmecy/widgets/card_three.dart';
import 'package:pharmecy/widgets/card_two.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(children: [
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 9, bottom: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.all(Radius.circular(21)),
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
                      const SizedBox(
                        width: 90,
                      ),
                      const Text(
                        'Search',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xff0057B8).withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Image(
                                      width: 20,
                                      height: 20,
                                      image:
                                          AssetImage('assets/icons/starp.png')),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'You’ve 3 coupons saved\nest. value \$20.99',
                                style: TextStyle(
                                    color: Color(0xff0057B8),
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //cardone
                      Container(
                        height: 213,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xffB0B0B0).withOpacity(0.39),
                                blurRadius: 12,
                                spreadRadius: 0,
                                offset: const Offset(0, 2))
                          ],
                        ),
                        child: const Column(
                          children: [
                            CardOne(isBlueIcon: false),
                            Padding(
                              padding: EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  Text(
                                    'Will be released in:',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    ' 02\ndays',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 04\nhours',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 25\nmin',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 32\nsec',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //cardtwo
                      Container(
                        height: 175,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xffB0B0B0).withOpacity(0.39),
                                blurRadius: 12,
                                spreadRadius: 0,
                                offset: const Offset(0, 2))
                          ],
                        ),
                        child: const Column(
                          children: [
                            CardThree(isBlueIcon: false),
                            Padding(
                              padding: EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  Text(
                                    'Will be released in:',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    ' 02\ndays',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 04\nhours',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 25\nmin',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 32\nsec',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //cardthree
                      Container(
                        height: 175,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xffB0B0B0).withOpacity(0.39),
                                blurRadius: 12,
                                spreadRadius: 0,
                                offset: const Offset(0, 2))
                          ],
                        ),
                        child: const Column(
                          children: [
                            CardTwo(isBlueIcon: false),
                            Padding(
                              padding: EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  Text(
                                    'Will be released in:',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    ' 02\ndays',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 04\nhours',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 25\nmin',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    ' 32\nsec',
                                    style: TextStyle(
                                        color: Color(0xffE02020),
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ])));
  }
}
