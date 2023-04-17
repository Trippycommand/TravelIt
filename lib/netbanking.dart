import 'dart:ui';
import 'package:flutter_application_2/congragualtion.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class netbanking extends StatefulWidget {
  const netbanking({Key? key}) : super(key: key);

  @override
  State<netbanking> createState() => _netbankingState();
}

class _netbankingState extends State<netbanking> {
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
                    top: 40,
                    left: 60,
                    child: Image.asset(
                      'image/card.PNG',
                      height: 179,
                      width: 275,
                    )),
                Positioned(
                    top: 235,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      cursorColor: Colors.white,
                      showCursor: true,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.payment,
                            size: 30,
                            color: Color.fromARGB(205, 255, 255, 255),
                          ),
                          labelText: 'Card Number',
                          border: UnderlineInputBorder(),
                          counterText: '',
                          fillColor: Color(0xffFFFEFE),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 239, 245)),
                          ),
                          labelStyle: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(226, 255, 255, 255))),
                    )),
                Positioned(
                    top: 305,
                    left: 40,
                    right: 190,
                    child: TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      cursorColor: Colors.white,
                      showCursor: true,
                      cursorHeight: 25,
                      controller: _date,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.calendar_today_rounded,
                            size: 25,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          labelText: 'Expiry Date',
                          hintText: 'yyyy-MM-dd',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(184, 255, 255, 255),
                              fontSize: 22)),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100));

                        if (pickeddate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('yyyy-MM-dd').format(pickeddate);
                          });
                        }
                      },
                    )),
                Positioned(
                    top: 305,
                    left: 230,
                    right: 40,
                    child: TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      cursorColor: Colors.white,
                      showCursor: true,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          // prefixIcon: Icon(
                          //   Icons.person,
                          //   size: 30,
                          //   color: Color.fromARGB(136, 255, 255, 255),
                          // ),

                          labelText: 'Gender',
                          border: UnderlineInputBorder(),
                          counterText: '',
                          fillColor: Color(0xffFFFEFE),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 239, 245)),
                          ),
                          labelStyle: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(160, 255, 255, 255))),
                    )),
                Positioned(
                    top: 370,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      cursorColor: Colors.white,
                      showCursor: true,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 30,
                            color: Color.fromARGB(205, 255, 255, 255),
                          ),
                          labelText: 'Name(According To Card)',
                          border: UnderlineInputBorder(),
                          counterText: '',
                          fillColor: Color(0xffFFFEFE),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 239, 245)),
                          ),
                          labelStyle: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(226, 255, 255, 255))),
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
                                      'Pay : 570 Ruppess',
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
