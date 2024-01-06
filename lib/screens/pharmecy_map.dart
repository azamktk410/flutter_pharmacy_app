import 'package:flutter/material.dart';
import 'package:pharmecy/screens/pharmecy_detail.dart';

class PharmecyMap extends StatefulWidget {
  const PharmecyMap({super.key});

  @override
  State<PharmecyMap> createState() => _PharmecyMapState();
}

class _PharmecyMapState extends State<PharmecyMap> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
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
          Column(
            children: [
              SizedBox(
                height: height * 0.1,
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
                                      const PharmecyDetail()));
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                    width: 17,
                                    height: 17,
                                    image: AssetImage('assets/icons/list.png')),
                                Text(
                                  'List',
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
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width,
                height: height * 0.784,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/background.png')),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const Column(children: []),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
