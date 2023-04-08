import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zoo/login_screen.dart';
import 'txtfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'animal_screen.dart';
import 'reuse/reuse_animalCard.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  static const String id = 'main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool ispressedprofile = false;
  bool ispressedsearch = false;
  late User loginUser;
  final _auth = FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;

      if (user != null) {
        loginUser = user;
        print(loginUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: Color(0xFFE2FFA5),
        leading: IconButton(
          onPressed: () {
            setState(() {
              ispressedprofile = !ispressedprofile;
            });
          },
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
            size: 35.0,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    ispressedsearch = !ispressedsearch;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 35.0,
                ),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Visibility(
            visible: ispressedprofile && !ispressedsearch,
            child: Container(
              height: 600.0,
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFE2FFA5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage('images/dollar.jpeg'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Dollar Batra',
                    style: TextStyle(
                        color: Color(0xFF25310B),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  reusetext('72472-06391'),
                  SizedBox(
                    height: 5.0,
                  ),
                  reusedivider(),
                  SizedBox(
                    height: 10.0,
                  ),
                  reusetext('Edit Personal Information'),
                  SizedBox(
                    height: 10.0,
                  ),
                  reusedivider(),
                  SizedBox(
                    height: 10.0,
                  ),
                  reusetext('Edit Password'),
                  SizedBox(
                    height: 10.0,
                  ),
                  reusedivider(),
                  SizedBox(
                    height: 10.0,
                  ),
                  reusetext('Log Out')
                ],
              ),
            ),
          ),
          Visibility(
            visible: ispressedsearch && !ispressedprofile,
            child: Container(
              height: 600.0,
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFE2FFA5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Color(0xFF758756),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Color(0xFF758756)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        // contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: mainScreenContentCard(
                  imageLink: 'images/guide-tour.jpg',
                ),
              ),
              Expanded(
                  child: mainScreenContentCard(
                imageLink: 'images/tickets.jpg',
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: mainScreenContentCard(
                  imageLink: 'images/history.jpg',
                ),
              ),
              Expanded(
                  child: mainScreenContentCard(
                imageLink: 'images/clothing-store.jpg',
              ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          reusedivider(),
          Row(
            children: [ReUseAnimalCard(), ReUseAnimalCard()],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [ReUseAnimalCard(), ReUseAnimalCard()],
          )
        ],
      )),
    );
  }
}

class mainScreenContentCard extends StatelessWidget {
  String imageLink;
  mainScreenContentCard({required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      // child: Text('text here'),
      height: MediaQuery.of(context).size.height * 0.1315,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageLink),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black)),
      child: InkWell(
        onTap: () {},
      ),
    );
  }
}

class reusetext extends StatelessWidget {
  late String data;
  reusetext(this.data);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(color: Color(0xFF25310B), fontSize: 20.0),
    );
  }
}

class reusedivider extends StatelessWidget {
  const reusedivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        thickness: 2.0,
        color: Color(0xFF25310B),
      ),
    );
  }
}
