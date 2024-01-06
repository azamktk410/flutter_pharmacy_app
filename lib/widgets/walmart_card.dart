import 'package:flutter/material.dart';

class WalmartCard extends StatelessWidget {
  const WalmartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 118,
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xffb0b0b0).withOpacity(0.39),
                blurRadius: 12,
                spreadRadius: 0,
                offset: const Offset(0, 2))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Container(
                width: 105,
                height: 90,
                decoration: const BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Image(
                      height: 20,
                      width: 80,
                      image: AssetImage('assets/icons/Walmart_logo.png')),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 69,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color(0xffA435F0).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                            width: 10,
                            height: 10,
                            image: AssetImage('assets/icons/starp.png')),
                        Text(
                          'Best Offer',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffA435F0)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$9.99',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0057B8)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color(0xff0057B8).withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: const Center(
                        child: Image(
                            width: 12,
                            height: 15,
                            image: AssetImage('assets/icons/pin.png')),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '32-B Kings Road, NYC',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0057B8)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '15 min | ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0057B8)),
                            ),
                            Text(
                              'open',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            const Image(
                width: 16,
                height: 12,
                image: AssetImage('assets/icons/arrow-left.png'))
          ],
        ),
      ),
    );
  }
}
