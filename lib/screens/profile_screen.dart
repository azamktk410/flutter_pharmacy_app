import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * .3,
              decoration: const BoxDecoration(
                color: Color(0xff0057B8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/phr.jpg'),
                        ),
                        Positioned(
                          top: 70,
                          left: 70,
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child:
                                    Icon(color: Color(0xff0057B8), Icons.edit),
                              )),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Richard Abhiana',
                      style: TextStyle(
                          fontFamily: 'Playfair Display',
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                          color: Color(0xffffffff)),
                    ),
                    const Text(
                      'Senior Pharmacist',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                          color: Color(0xffffffff)),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('Photos',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff1D1D1D),
                              )),
                          Text('5114',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Followers',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff1D1D1D),
                              )),
                          Text('35114',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Following',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff1D1D1D),
                              )),
                          Text('22114',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height * .001,
              width: width * .9,
              color: const Color(0xff979797).withOpacity(0.23),
            ),
            const Spacer(),
            const Text('User Infromation',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black,
                )),
            Container(
              height: height * 0.001,
              width: width * 0.9,
              color: const Color(0xff979797).withOpacity(0.23),
            ),
            const Spacer(),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location'),
              subtitle: Text('New York, USA'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('abhiana@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+8834304494'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              subtitle: Text('I am currently working as Senior Pharmacist'),
            ),
          ],
        ),
      ),
    );
  }
}
