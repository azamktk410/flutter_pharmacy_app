import 'package:flutter/material.dart';
import 'package:pharmecy/customwidgets/custom_appbar.dart';
import 'package:pharmecy/customwidgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: CustomAppBar(context: context)),
      ),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xff0057B8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Good Morning,',
                        style: TextStyle(
                            fontFamily: 'Playfair Display',
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: Color(0xff000000)),
                      ),
                      const Text(
                        'Richard Abhiana',
                        style: TextStyle(
                            fontFamily: 'Playfair Display',
                            fontWeight: FontWeight.w700,
                            fontSize: 29,
                            color: Color(0xff0057B8)),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      //search field

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Search for a medication coupon',
                            hintStyle: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0057B8)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                width: 20,
                                height: 20,
                                image: AssetImage('assets/icons/Fill.png'),
                              ),
                            )),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      //carousal sliders

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: const BoxDecoration(
                            color: Color(0xffD8F1FF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Transform.translate(
                                    offset: const Offset(-10, 0),
                                    child: Row(
                                      children: [
                                        Transform.rotate(
                                          angle: -1.57,
                                          child: const Text(
                                            'UPTO',
                                            style: TextStyle(
                                                color: Color(0xff161531),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13),
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: const Offset(-10.0, 0),
                                          child: const Text(
                                            '40%',
                                            style: TextStyle(
                                                color: Color(0xff161531),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 40),
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: const Offset(-52, 23),
                                          child: const Text(
                                            'OFFER*',
                                            style: TextStyle(
                                                color: Color(0xff161531),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'On Health Products',
                                    style: TextStyle(
                                        color: Color(0xff161531),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 34,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffA435F0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'SHOP NOW',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    'Medical Products, Personal\n Care & More',
                                    style: TextStyle(
                                        color: Color(0xff161531),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 25,
                                    top: 0,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/circle.png')),
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 40,
                                    child: SizedBox(
                                      width: 128,
                                      height: 128,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/icons/circleb.png')),
                                    ),
                                  ),
                                  Positioned(
                                    top: 60,
                                    left: 20,
                                    child: SizedBox(
                                      width: 107,
                                      height: 107,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/hsimg.png')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Available Coupons',
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.5),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 240,
                              height: 104,
                              decoration: const BoxDecoration(
                                  color: Color(0xff1B69C7),
                                  border: Border(
                                      left: BorderSide(
                                          width: 4, color: Color(0xff66AAFF)))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 28, top: 15, right: 15, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      '60% Off on Walgreens',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    const Row(
                                      children: [
                                        Image(
                                            width: 14,
                                            height: 14,
                                            image: AssetImage(
                                                'assets/icons/clock.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Expires 23 Sep, 2024',
                                          style: TextStyle(
                                              color: Color(0xffC2DDFF),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 23,
                                              height: 23,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xffffffff)
                                                      .withOpacity(0.43),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5)),
                                              child: const Image(
                                                  width: 8,
                                                  height: 11.2,
                                                  image: AssetImage(
                                                      'assets/icons/location.png')),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              width: 23,
                                              height: 23,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xffffffff)
                                                      .withOpacity(0.43),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5)),
                                              child: const Image(
                                                  width: 8,
                                                  height: 11.2,
                                                  image: AssetImage(
                                                      'assets/icons/heartt.png')),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              width: 23,
                                              height: 23,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xffffffff)
                                                      .withOpacity(0.43),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5)),
                                              child: const Image(
                                                  width: 8,
                                                  height: 11.2,
                                                  image: AssetImage(
                                                      'assets/icons/chromm.png')),
                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff5298FF),
                                              borderRadius:
                                                  BorderRadius.circular(11.5)),
                                          child: const Center(
                                            child: Image(
                                                width: 11.9,
                                                height: 9.53,
                                                image: AssetImage(
                                                    'assets/icons/truee.png')),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 240,
                              height: 104,
                              decoration: const BoxDecoration(
                                  color: Color(0xff3C94FF),
                                  border: Border(
                                      left: BorderSide(
                                          width: 4, color: Color(0xff66AAFF)))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 28, top: 15, right: 15, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      '15% Off on ASDA',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    const Row(
                                      children: [
                                        Image(
                                            width: 14,
                                            height: 14,
                                            image: AssetImage(
                                                'assets/icons/clock.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Expires 23 Sep, 2024',
                                          style: TextStyle(
                                              color: Color(0xffC2DDFF),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 23,
                                              height: 23,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xffffffff)
                                                      .withOpacity(0.43),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5)),
                                              child: const Image(
                                                  width: 8,
                                                  height: 11.2,
                                                  image: AssetImage(
                                                      'assets/icons/location.png')),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              width: 23,
                                              height: 23,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xffffffff)
                                                      .withOpacity(0.43),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5)),
                                              child: const Image(
                                                  width: 8,
                                                  height: 11.2,
                                                  image: AssetImage(
                                                      'assets/icons/heartt.png')),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              width: 23,
                                              height: 23,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xffffffff)
                                                      .withOpacity(0.43),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5)),
                                              child: const Image(
                                                  width: 8,
                                                  height: 11.2,
                                                  image: AssetImage(
                                                      'assets/icons/chromm.png')),
                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff5298FF),
                                              borderRadius:
                                                  BorderRadius.circular(11.5)),
                                          child: const Center(
                                            child: Image(
                                                width: 11.9,
                                                height: 9.53,
                                                image: AssetImage(
                                                    'assets/icons/truee.png')),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //
                      // Talk to Pharmacist
                      //
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 202,
                        decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xffaaaaaa).withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: const Offset(0, 2)),
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 20),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Not Sure Which MED to\n Choose?',
                                      style: TextStyle(
                                          color: Color(0xff161531),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14),
                                    ),
                                    const Text(
                                      'Talk to a Qualified Doctor to\n know the right medicine for\n your health condition.',
                                      style: TextStyle(
                                          color: Color(0xff161531),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'TALK TO A PHARMACIST',
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 14),
                                        ))
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      height: 150,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/doctor.png')),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
