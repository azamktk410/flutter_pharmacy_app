import 'package:flutter/material.dart';
import 'package:pharmecy/widgets/card_one.dart';
import 'package:pharmecy/widgets/card_three.dart';
import 'package:pharmecy/widgets/card_two.dart';

class CouponDetails extends StatefulWidget {
  const CouponDetails({super.key});

  @override
  State<CouponDetails> createState() => _CouponDetailsState();
}

class _CouponDetailsState extends State<CouponDetails> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                            child: const Center(
                              child: Image(
                                  width: 24,
                                  image:
                                      AssetImage('assets/icons/rightaro.png')),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Coupon Details',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        )
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
                    child: Column(children: [
                      const CardOne(isBlueIcon: true),
                      const SizedBox(
                        height: 10,
                      ),
                      //2nd card
                      Container(
                        height: 279,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffb0b0b0).withOpacity(0.39),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 15, bottom: 15),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SAVE COUPON',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff1D1D1D)
                                        .withOpacity(0.50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 314,
                                  height: 1,
                                  color:
                                      const Color(0xff979797).withOpacity(0.23),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 325,
                                  height: 140,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/icons/bg.png')),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'GET UPTO ',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w800,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                                Text(
                                                  '15% ',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w800,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                                Text(
                                                  'OFF ON',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w800,
                                                    color: Color(0xffffffff),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              'HEALTH AND WELLNESS \nESSENTIALS',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w800,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                            Text(
                                              'CODE: 6AG7AJ71BAG1',
                                              style: TextStyle(
                                                fontSize: 19,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w800,
                                                color: Color(0xffffffff),
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 97,
                                          height: 97,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffA435F0),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(48.5)),
                                              border: Border.all(
                                                color: const Color(0xffffffff),
                                                width: 3,
                                              )),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Center(
                                                  child: Transform.rotate(
                                                      angle: -0.50,
                                                      child: const Text(
                                                        '16.00%',
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xffffffff),
                                                        ),
                                                      ))),
                                              Center(
                                                  child: Transform.rotate(
                                                      angle: -0.50,
                                                      child: const Text(
                                                        '    OFF',
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xffffffff),
                                                        ),
                                                      ))),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 45,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff0057B8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                              width: 16,
                                              height: 20,
                                              image: AssetImage(
                                                  'assets/icons/mobile.png')),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Text',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffffffff),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 45,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff0057B8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                              width: 22,
                                              height: 18,
                                              image: AssetImage(
                                                  'assets/icons/cloud.png')),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Save',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffffffff),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 131,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffb0b0b0).withOpacity(0.39),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'COUPON AVAILABILITY',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color(0xff1D1D1D).withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 314,
                                height: 1,
                                color:
                                    const Color(0xff979797).withOpacity(0.23),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Row(
                                  children: [
                                    const Image(
                                      width: 16,
                                      height: 16,
                                      image: AssetImage(
                                          'assets/icons/clockblu.png'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Start Date',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff1D1D1D)
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    const Text('12 September, 2022',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff1D1D1D)))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  children: [
                                    const Image(
                                      width: 16,
                                      height: 16,
                                      image: AssetImage(
                                          'assets/icons/clockblu.png'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'End Date',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff1D1D1D)
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    const Text('20 September, 2022',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff1D1D1D)))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 194,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffb0b0b0).withOpacity(0.39),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'OFFERING PHARMACY INFO',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color(0xff1D1D1D).withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 314,
                                height: 1,
                                color:
                                    const Color(0xff979797).withOpacity(0.23),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Name:',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff1D1D1D)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  const Text(
                                    'ASDA',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff1D1D1D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Address:',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff1D1D1D)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  const Text(
                                    '13-A Clements Road, B258TX',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff1D1D1D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Phone',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff1D1D1D)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  const Text(
                                    '+1234 871 5678 15',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff1D1D1D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Walking Distance',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff1D1D1D)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  const Text(
                                    '15 Min',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff1D1D1D),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Status',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff1D1D1D)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  const Text(
                                    'Open',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                                'COUPON AVAILABILITY',
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
                                'OFFERING PHARMACY INFO',
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 231,
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
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'OFFER TERMS',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff1D1D1D)
                                        .withOpacity(0.5),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 314,
                                  height: 1,
                                  color:
                                      const Color(0xff979797).withOpacity(0.23),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at aliquet nibh. Duis in volutpat turpis, sit amet vulputate dui. In ut tincidunt lectus. Sed non purus sit amet ex aliquet vulputate. Donec et vestibulum nisi. Donec at iaculis mi. Fusce a quam suscipit, mollis lacus quis, ultricies neque. Proin aliquet commodo magna, non gravida ligula convallis id. Sed luctus, urna ac fringilla lacinia.',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff1D1D1D)),
                                  textAlign: TextAlign.justify,
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 165,
                        width: MediaQuery.of(context).size.width,
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
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SIMILAR COUPONS',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff1D1D1D)
                                        .withOpacity(0.5),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 314,
                                  height: 1,
                                  color:
                                      const Color(0xff979797).withOpacity(0.23),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      const CardThree(isBlueIcon: true),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 51,
                                        width: 1,
                                        color: const Color(0xff979797)
                                            .withOpacity(0.23),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const CardTwo(isBlueIcon: false)
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      )
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
