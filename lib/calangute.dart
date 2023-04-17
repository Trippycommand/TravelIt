import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/first.dart';
import 'package:flutter_application_2/goa.dart';
import 'package:flutter_application_2/transport.dart';

class calangute extends StatefulWidget {
  const calangute({Key? key}) : super(key: key);

  @override
  State<calangute> createState() => _calanguteState();
}

class _calanguteState extends State<calangute> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1593620529462-619501b0f7f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FsYW5ndXRlJTIwYmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Goa()),
              );
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 29,
            ),
          ),
          elevation: 1,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            '',
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
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
          alignment: Alignment.bottomCenter,
          child: (Container(
            height: 270,
            width: 400,
            color: Color.fromARGB(117, 0, 0, 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    child: Text(
                      'Calangute Beach',
                      style: GoogleFonts.montserrat(
                          fontSize: 31,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 254, 254, 254)),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 20,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 7),
                        child: Text(
                          '4.6',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.star_rate_sharp,
                          size: 20,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: Container(
                    child: Text(
                      '',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 254, 254, 254)),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30,
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
                                    builder: (context) => Transport()),
                              );
                            },
                            child: Text(
                              'Book my Tickets',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)))),
                      ),
                    ))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
