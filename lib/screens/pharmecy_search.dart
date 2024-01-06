import 'package:flutter/material.dart';

class PharmecySearch extends StatefulWidget {
  const PharmecySearch({super.key});

  @override
  State<PharmecySearch> createState() => _PharmecySearchState();
}

class _PharmecySearchState extends State<PharmecySearch> {
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
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
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/icons/rightaro.png'),
                            ),
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
                  padding: const EdgeInsets.all(14),
                  child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                width: 20,
                                height: 20,
                                image: AssetImage('assets/icons/Fill.png')),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                color: Color(0xff101820),
                                width: 15,
                                height: 20,
                                image: AssetImage('assets/icons/mic.png')),
                          ),
                          hintText: 'Search for a drug',
                          hintStyle: TextStyle(
                            color: Color(0xff617C9D),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/bgpic.png'))),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                        color: Color(0xffbb57a8),
                                      ),
                                    ),
                                    Text(
                                      'OFF ON ',
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
                                SizedBox(
                                  height: 80,
                                ),
                                Text(
                                  'Terms & Conditions ApplyFor more\n details, check the coupons.',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffffffff)),
                                )
                              ],
                            ),
                            Container(
                              width: 112,
                              height: 112,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0057B8),
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(56)),
                              child: Transform.rotate(
                                angle: -.4,
                                child: Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'DISCOUNTS',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffffffff)),
                                      ),
                                      const Text(
                                        'From',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffffffff)),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 43,
                                        color: Colors.white,
                                      ),
                                      const Text(
                                        '16.00%',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffffffff)),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 43,
                                        color: Colors.white,
                                      ),
                                      const Text(
                                        'OFF',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffffffff)),
                                      ),
                                    ],
                                  ),
                                ),
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
                      height: 246,
                      decoration: const BoxDecoration(
                        color: Color(0xff0057B8),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Available at more than 40,000+\npharmacies across the nation.',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffffffff)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1,
                              width: 314,
                              color: const Color(0xff979797).withOpacity(0.4),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //1st row
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                    height: 50,
                                    width: 70,
                                    image: AssetImage(
                                        'assets/images/walgreen.png')),
                                Image(
                                    height: 20,
                                    width: 50,
                                    image: AssetImage('assets/images/asda.png'))
                              ],
                            ),
                            //2nd row
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                    height: 50,
                                    width: 70,
                                    image:
                                        AssetImage('assets/images/elxr.png')),
                                Image(
                                    height: 20,
                                    width: 50,
                                    image: AssetImage('assets/images/cvs.png'))
                              ],
                            ),
                            //3rd row
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                    height: 50,
                                    width: 70,
                                    image:
                                        AssetImage('assets/images/kroger.png')),
                                Image(
                                    height: 40,
                                    width: 70,
                                    image:
                                        AssetImage('assets/images/walmart.png'))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ])),
            )
          ]),
        ),
      ])),
    );
  }
}
