import 'package:flutter/material.dart';
import 'package:pharmecy/screens/coupon_details_screen.dart';
import 'package:pharmecy/widgets/card_one.dart';
import 'package:pharmecy/widgets/card_three.dart';
import 'package:pharmecy/widgets/card_two.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
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
                  width: MediaQuery.of(context).size.width,
                  height: 44,
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
                          height: 182,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color(0xff0057B8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Stack(children: [
                            Positioned(
                              top: 47,
                              left: 0,
                              child: Image(
                                  width: 142,
                                  height: 172,
                                  color:
                                      const Color(0xffffffff).withOpacity(0.9),
                                  image: const AssetImage(
                                      'assets/images/cimgone.png')),
                            ),
                            Positioned(
                              left: 130,
                              top: -25,
                              child: Image(
                                  width: 255,
                                  height: 215,
                                  color:
                                      const Color(0xffffffff).withOpacity(0.9),
                                  image: const AssetImage(
                                      'assets/images/cimgtwo.png')),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Highlights',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xffffffff)),
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              '1,760',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 34,
                                                  color: Color(0xffffffff)),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'est.value',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  color: Color(0xffffffff)),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '\$20.99',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  color: Color(0xffffffff)),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Image(
                                                width: 10,
                                                height: 11,
                                                image: AssetImage(
                                                    'assets/icons/star.png')),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              'You’ve saved \$179.45 so far this year',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  color: Color(0xffffffff)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Row(
                                          children: [
                                            Image(
                                                width: 10,
                                                height: 11,
                                                image: AssetImage(
                                                    'assets/icons/star.png')),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              'You’ve 3 coupons saved, est. value \$20.99',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  color: Color(0xffffffff)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          width: 88,
                                          height: 38,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffF7E89E),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const CouponDetails()));
                                            },
                                            child: const Text(
                                              'More Info',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 14,
                                                  color: Color(0xff000000)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 112,
                                        left: 13,
                                        child: Image(
                                            width: 70,
                                            height: 70,
                                            image: AssetImage(
                                                'assets/icons/starrr.png')),
                                      ),
                                      Positioned(
                                        top: 20,
                                        left: 30,
                                        child: Image(
                                            width: 24,
                                            height: 24,
                                            image: AssetImage(
                                                'assets/icons/infoo.png')),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 79,
                          decoration: BoxDecoration(
                              color: const Color(0xff0057B8).withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Your Exclusive Offers',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Color(0xff0057B8)),
                              ),
                              Text(
                                'PC Ultra Liquid Dsh 638mL Selected Varieties',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff0057B8)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CardOne(
                          isBlueIcon: true,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          decoration: const BoxDecoration(
                              color: Color(0xffE9E9E9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Ad Slot 345x80',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CardTwo(
                          isBlueIcon: true,
                        ),
                        const SizedBox(height: 12),
                        const CardThree(isBlueIcon: true)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ])));
  }
}
