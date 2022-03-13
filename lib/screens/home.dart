import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ieeespsu/screens/chatmain.dart';
import 'package:ieeespsu/screens/homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentindex = 0;
  final tabs = [
    HomePage(),
    ChatMain(),
    Center(
      child: Text("FM"),
    ),
    Center(
      child: Text("Magazine"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomAppBar(
        elevation: 100,
          child: Container(
        color: Colors.grey[200],
        height: 75,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(top:10.0),
                onPressed: () {
                  setState(() {
                    _currentindex = 0;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.house_rounded,
                      color: Colors.cyan,
                      size: 37,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                width: 2,
              ),
              FlatButton(
                padding: EdgeInsets.only(top:10.0),
                onPressed: () {
                  setState(() {
                    _currentindex = 1;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.mail_rounded,
                      color: Colors.cyan,
                      size: 37,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                width: 2,
              ),
              FlatButton(
                padding: EdgeInsets.only(top:10.0),
                onPressed: () {
                  setState(() {
                    _currentindex = 2;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.radio,
                      color: Colors.cyan,
                      size: 37,
                    ),
                    Text(
                      'FM',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                width: 2,
              ),
              FlatButton(
                padding: EdgeInsets.only(top:10.0),
                onPressed: () {
                  setState(() {
                    _currentindex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Icon(
                    //   Icons.home,
                    //   color: Colors.cyan,
                    //   size: 37,
                    // ),
                    Container(
                      height: 35,
                      width: 85,
                      child: Image(
                        image: AssetImage("assets/images/ieee.png"),
                        fit: BoxFit.fill,
                        ),
                      ),
                    Text(
                      'Magazine',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ]),
      )),
    );
  }
}
