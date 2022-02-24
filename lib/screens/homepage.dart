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
              top: -155,
              child: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 200,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 23,
                        child: IconButton(
                          icon: Icon(
                            Icons.person_add,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context)=> UserProfile()));
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Hello there . . .",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
