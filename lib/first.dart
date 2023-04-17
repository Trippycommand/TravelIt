import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/andamans.dart';
import 'package:flutter_application_2/bhimtal.dart';
import 'package:flutter_application_2/goa.dart';
import 'package:flutter_application_2/kerala.dart';
import 'package:flutter_application_2/maharashtra.dart';
import 'package:flutter_application_2/rajasthan.dart';
import 'package:flutter_application_2/shimla.dart';
import 'package:flutter_application_2/signup.dart';
import 'package:flutter_application_2/thar.dart';
import 'package:flutter_application_2/uttarpradesh.dart';

import 'package:google_fonts/google_fonts.dart';

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Aryan',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              accountEmail: Text(
                'deshmukh6607@dmail.com',
                style: GoogleFonts.montserrat(fontSize: 18),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80'),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                )),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(115, 0, 0, 0),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                'Favorites',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
            ListTile(
              leading: Icon(
                Icons.airplane_ticket,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                'Tickets',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
            ListTile(
              leading: Icon(
                Icons.currency_rupee_sharp,
                color: Colors.black,
                size: 27,
              ),
              title: Text(
                'Transcations',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
            Divider(
              color: Color.fromARGB(54, 0, 0, 0),
              thickness: 2,
            ),
            ListTile(
                leading: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 27,
                ),
                title: Text(
                  'Sign Out',
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2),
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                }),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.black,
                size: 27,
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              onTap: null,
            ),
          ],
        ),
        backgroundColor: Colors.white.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topRight: Radius.circular(30))),
        elevation: 200,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          'India',
          style:
              GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w500),
        )),
        actions: [
          ClipOval(
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80'),
              height: 10,
              width: 50,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(padding: EdgeInsets.all(8)),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xff06283D),
              Color(0xff256D85),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 130, right: 300, left: 20, bottom: 20),
                child: Text(
                  'State',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onLongPress: () {},
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Maharashtra(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/maha.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Maharashtra',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Rajasthan(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/rajis.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Rajasthan',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Goa(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/goa.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Goa',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 2,
                                      fontSize: 17,
                                      color: Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Kerala(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/kerala.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            Color.fromARGB(144, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Kerala',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  UttarPradesh(),
                                            ));
                                      },
                                      child: Image.asset(
                                        'images/uttarpradesh.png',
                                        height: 55,
                                        width: 55,
                                        filterQuality: FilterQuality.high,
                                        color:
                                            Color.fromARGB(255, 241, 237, 237),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Uttar Pradesh ',
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1.5,
                                      fontSize: 17,
                                      color: Color.fromARGB(194, 253, 253, 253),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ]),
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 45, right: 150, left: 18, bottom: 35),
                    child: Text(
                      'Popular Destinations',
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/lake.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: Text(
                                                '4.6',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Bhimtal Lake',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Bhimtal is a lake in the town of Bhimtal, Nainital district of Uttarakhand......',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                                BoxConstraints.tightFor(
                                                    height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          bhimtal(),
                                                    ));
                                              },
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  primary: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                      Color(0xff1B7084),
                                                  elevation: 3),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/shimla.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: Text(
                                                '4.6',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Shimla',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Bhimtal is a lake in the town of Bhimtal, Nainital district of Uttarakhand......',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                                BoxConstraints.tightFor(
                                                    height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          shimla(),
                                                    ));
                                              },
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  primary: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                      Color(0xff1B7084),
                                                  elevation: 3),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 20, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/beach.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: Text(
                                                '4.6',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Alibag Beach',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Bhimtal is a lake in the town of Bhimtal, Nainital district of Uttarakhand......',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                                BoxConstraints.tightFor(
                                                    height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          andamans(),
                                                    ));
                                              },
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  primary: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                      Color(0xff1B7084),
                                                  elevation: 3),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 30),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  padding: EdgeInsets.all(0),
                                  height: 350,
                                  width: 280,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'images/thar.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print('Favorite');
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 33,
                                  right: 25,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(70, 206, 190, 190)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 5, left: 8),
                                              child: Text(
                                                '4.6',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  child: Container(
                                    height: 120,
                                    width: 279,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Color.fromARGB(93, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Text(
                                              'Thar Desert',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                right: 20,
                                                left: 20,
                                                bottom: 20),
                                            child: Text(
                                                'Bhimtal is a lake in the town of Bhimtal, Nainital district of Uttarakhand......',
                                                overflow: TextOverflow.clip,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1)))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -22,
                                  right: 73,
                                  child: Container(
                                    height: 45,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 0, 0, 0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: ConstrainedBox(
                                            constraints:
                                                BoxConstraints.tightFor(
                                                    height: 45, width: 127),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          thar(),
                                                    ));
                                              },
                                              child: Text(
                                                'Explore',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  primary: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadowColor:
                                                      Color(0xff1B7084),
                                                  elevation: 3),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            )
                          ],
                        )),
                  )
                ],
              ))
            ],
          )),
    );
  }
}
