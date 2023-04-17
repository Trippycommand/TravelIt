import 'dart:ui';
import 'package:flutter_application_2/congragualtion.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class paytm extends StatefulWidget {
  const paytm({Key? key}) : super(key: key);

  @override
  State<paytm> createState() => _paytmState();
}

class _paytmState extends State<paytm> {
  TextEditingController _date = TextEditingController();
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
              ' Payment Gateway',
              style: GoogleFonts.montserrat(
                  fontSize: 24, fontWeight: FontWeight.w500),
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
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: 60,
                    left: 70,
                    child: Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUXE8YAAEjuPhzcmaIT7TdIxEqsQhQIkqing&usqp=CAU'),
                    )),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 250,
                    width: 400,
                    color: Color.fromARGB(122, 0, 0, 0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Text(
                            'Summary',
                            style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 15,
                          child: Text(
                            'Travelling Mode : ',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 101,
                          left: 21,
                          child: Text(
                            'Class :',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 144,
                          left: 21,
                          child: Text(
                            'Total Amount :',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                            bottom: 15,
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
                                            builder: (context) =>
                                                congragulation(),
                                          ));
                                    },
                                    child: Text(
                                      'Pay : 420 Ruppess',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff5F9DF7),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)))),
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
