import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ieeespsu/screens/userprofile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello there . . .",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: const CircleAvatar(
          radius: 23,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 23,
            child: Icon(
              Icons.person_add,
              size: 30,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.transparent,
            ),
            const Positioned(
              top: -250,
              child: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 210,
              ),
            ),
            // Column(
            //   children: [
            //     // SizedBox(
            //     //   height: 30,
            //     // ),
            //     Row(
            //       children: const [
            //         CircleAvatar(
            //           radius: 24,
            //           backgroundColor: Colors.black,
            //           child: CircleAvatar(
            //             radius: 23,
            //             child: Icon(
            //               Icons.person_add,
            //               size: 30,
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Text(
            //           "Hello there . . .",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.lightBlue[50],
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(alignment: Alignment.center, children: [
                  Opacity(
                    opacity: 1,
                    child: ClipPath(
                      clipper: Clipper(),
                      child: Container(
                        // color: Colors.cyan,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                              Colors.greenAccent,
                              Colors.cyan,
                              Colors.cyan
                            ])),
                        height: 250,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(width: 15),
                      const CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello avneet",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                          Text(
                            "Student",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      Spacer()
                    ],
                  )
                ]),
                Container(
                  padding: EdgeInsets.only(top: 15, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "About",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Faculty Committee",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Student Committee",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Events",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "My Profile",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Settings",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Gallery Media",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 2, color: Colors.lightBlue[200]),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.facebookF,
                        size: 40,
                        color: Colors.lightBlue[200],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 40,
                        color: Colors.lightBlue[200],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 40,
                        color: Colors.lightBlue[200],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.youtube,
                        size: 40,
                        color: Colors.lightBlue[200],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "All rights reserved to MIKHVISION DIGI LLP.",
                  style: TextStyle(fontSize: 10, color: Colors.lightBlue[300]),
                ),
                Text(
                  "All rights reserved to IEEE SB SPSU.",
                  style: TextStyle(fontSize: 10, color: Colors.lightBlue[300]),
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "www.spsu.ac.in",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      "www.ieee.org",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//CLIPPER class for the wave design

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 3, size.height - 100, size.width / 1.001, size.height);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(Clipper oldClipper) => false;
}
