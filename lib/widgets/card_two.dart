import 'package:flutter/material.dart';

class CardTwo extends StatefulWidget {
  final bool isBlueIcon;
  const CardTwo({super.key, required this.isBlueIcon});

  @override
  State<CardTwo> createState() => _CardTwoState();
}

class _CardTwoState extends State<CardTwo> {
  bool isBlueIcon = true;
  @override
  void initState() {
    super.initState();
    isBlueIcon = widget.isBlueIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xffB0B0B0).withOpacity(0.39),
                blurRadius: 12,
                spreadRadius: 0,
                offset: const Offset(0, 2))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
                width: 96,
                height: 96,
                image: AssetImage('assets/images/omega.png')),
            const SizedBox(
              width: 3,
            ),
            Container(
              width: 1,
              height: 58,
              color: const Color(0xff979797).withOpacity(0.2),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Omega 3 Fish Oil Capsule',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff161531),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Limit : 4',
                  style: TextStyle(
                    fontSize: 8,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000).withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Image(
                                width: 14,
                                height: 14,
                                image:
                                    AssetImage('assets/icons/black-clock.png')),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Ends in 4 days',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff000000).withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Save \$7.09',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0057B8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 55),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBlueIcon = !isBlueIcon;
                        });
                      },
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Color(0xffE7E7E7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: isBlueIcon
                              ? const Center(
                                  child: Image(
                                      height: 18,
                                      width: 21,
                                      image: AssetImage(
                                          'assets/icons/fvrt-icon.png')),
                                )
                              : const Center(
                                  child: Image(
                                      height: 18,
                                      width: 21,
                                      image: AssetImage(
                                          'assets/icons/savedb.png')),
                                )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
