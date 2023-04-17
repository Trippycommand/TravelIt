import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/netbanking.dart';
import 'package:flutter_application_2/paytm.dart';
import 'package:google_fonts/google_fonts.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
              ' Payment Method',
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
                  top: 55,
                  left: 25,
                  child: Text(
                    'Payment Methods',
                    style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        wordSpacing: 5,
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 15,
                  child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(0, 255, 255, 255),
                            shadowColor: Colors.transparent,
                            elevation: 0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => netbanking(),
                          ));
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(0, 255, 255, 255)),
                        gradient: LinearGradient(
                            colors: const [
                              Color.fromARGB(255, 71, 76, 220),
                              Color.fromARGB(255, 50, 171, 219)
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                              constraints:
                                  BoxConstraints(maxWidth: 300, maxHeight: 58),
                              alignment: Alignment.center,
                              child: Text('Net Banking',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 28,
                                      color: Color(0xffFFFFFF)))),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 380,
                  left: 15,
                  child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(0, 255, 255, 255),
                            shadowColor: Colors.transparent,
                            elevation: 0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => paytm(),
                          ));
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(0, 255, 255, 255)),
                        gradient: LinearGradient(
                            colors: const [
                              Color.fromARGB(255, 71, 76, 220),
                              Color.fromARGB(255, 50, 171, 219)
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Icon(
                              Icons.mobile_friendly,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                              constraints:
                                  BoxConstraints(maxWidth: 300, maxHeight: 58),
                              alignment: Alignment.center,
                              child: Text('UPI',
                                  style: GoogleFonts.montserrat(
                                      wordSpacing: 3,
                                      letterSpacing: 7,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 28,
                                      color: Color(0xffFFFFFF)))),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
