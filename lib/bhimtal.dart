import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/train.dart';
import 'package:google_fonts/google_fonts.dart';

class bhimtal extends StatefulWidget {
  const bhimtal({Key? key}) : super(key: key);

  @override
  State<bhimtal> createState() => _bhimtalState();
}

class _bhimtalState extends State<bhimtal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1596003903067-bf5762ad5c19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 29,
          ),
          elevation: 2,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'Lakes',
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
                        'Bhimtal Lake',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 254, 254, 254)),
                      ),
                    )),
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
                                    builder: (context) => train(),
                                  ));
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
