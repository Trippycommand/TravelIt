import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/first.dart';
import 'package:google_fonts/google_fonts.dart';

class congragulation extends StatefulWidget {
  const congragulation({Key? key}) : super(key: key);

  @override
  State<congragulation> createState() => _congragulationState();
}

class _congragulationState extends State<congragulation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff22556B),
          Color(0xff35728A),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'Conformation',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w500),
          )),
          // actions: [
          //   ClipOval(
          //     child: Image(
          //       image: NetworkImage(
          //           'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80'),
          //       height: 10,
          //       width: 50,
          //       fit: BoxFit.fitHeight,
          //     ),
          //   ),
          //   Padding(padding: EdgeInsets.all(8)),
          // ],
        ),
        body: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  left: 90,
                  top: 50,
                  right: 60,
                  child: Text(
                    'Congragulations  Your  TIcket has been Confirmed',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: 180,
                  right: 180,
                  child: Icon(
                    Icons.celebration_rounded,
                    size: 60,
                    color: Color.fromARGB(229, 255, 255, 255),
                  )),
              Positioned(
                  bottom: 350,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 350,
                      height: 52,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Book my Tickets',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(39, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)))),
                    ),
                  )),
              Positioned(
                  bottom: 220,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 350,
                      height: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => first(),
                                ));
                          },
                          child: Text(
                            'Explore',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(55, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)))),
                    ),
                  )),
              Positioned(
                  bottom: 100,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 350,
                      height: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          child: Text(
                            'Logout',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(72, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)))),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
