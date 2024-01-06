import 'package:flutter/material.dart';
import 'package:pharmecy/screens/pharmecy_search.dart';
import 'package:pharmecy/widgets/card_one.dart';
import 'package:pharmecy/widgets/card_two.dart';
import 'package:pharmecy/widgets/kroger_card.dart';

class PharmecyDetail extends StatefulWidget {
  const PharmecyDetail({super.key});

  @override
  State<PharmecyDetail> createState() => _PharmecyDetailState();
}

class _PharmecyDetailState extends State<PharmecyDetail> {
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
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 9, bottom: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
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
                                  image:
                                      AssetImage('assets/icons/rightaro.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Pharmacies Details',
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
                                        const PharmecySearch()));
                          },
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(21))),
                            child: const Center(
                              child: Image(
                                  width: 17,
                                  height: 17,
                                  image:
                                      AssetImage('assets/icons/searchblu.png')),
                            ),
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
                    padding: const EdgeInsets.all(14),
                    child: Column(children: [
                      const Image(image: AssetImage('assets/images/staff.png')),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 160,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xff0057B8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Center(
                                      child: Image(
                                          width: 18,
                                          height: 18,
                                          image: AssetImage(
                                              'assets/icons/phone.png'))),
                                  Text(
                                    '416-812-9871',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 160,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xff0057B8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Center(
                                      child: Image(
                                          width: 18,
                                          height: 18,
                                          image: AssetImage(
                                              'assets/icons/pinn.png'))),
                                  Text(
                                    'Get Directions',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const KrogerCard(),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 51,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffb0b0b0).withOpacity(0.39),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'OFFER TERMS',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color(0xff1D1D1D).withOpacity(0.5),
                                ),
                              ),
                              Image(
                                width: 12,
                                height: 7,
                                color: const Color(0xff1D1D1D).withOpacity(0.5),
                                image: const AssetImage(
                                    'assets/icons/down-arrow.png'),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const CardOne(isBlueIcon: true),
                      const SizedBox(
                        height: 8,
                      ),
                      const CardTwo(isBlueIcon: false)
                    ]),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
