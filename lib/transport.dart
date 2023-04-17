import 'package:flutter/material.dart';
import 'package:flutter_application_2/flight.dart';
import 'package:flutter_application_2/train.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/first.dart';

class Transport extends StatefulWidget {
  const Transport({Key? key}) : super(key: key);

  @override
  State<Transport> createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => first()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 29,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          'Transportation',
          style:
              GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w500),
        )),
        actions: [
          ClipOval(
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80'),
              height: 10,
              width: 55,
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
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              child: Text(
                'Select Transportation method ',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => train()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1567312955700-59d1f67bd6e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW5kaWFuJTIwcmFpbHdheXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                        height: 220,
                        width: 220,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Railways',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ))
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => flight()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1663510254237-3c12fc7a1046?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                        height: 220,
                        width: 220,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Airways',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ))
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
