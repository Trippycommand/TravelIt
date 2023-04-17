import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/amber.dart';
import 'package:flutter_application_2/chittorgarh.dart';
import 'package:flutter_application_2/first.dart';
import 'package:flutter_application_2/hawamahal.dart';
import 'package:flutter_application_2/tajlake.dart';

class Rajasthan extends StatefulWidget {
  const Rajasthan({Key? key}) : super(key: key);

  @override
  State<Rajasthan> createState() => _RajasthanState();
}

class _RajasthanState extends State<Rajasthan> {
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
          'Rajasthan',
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
                'Top Destinations: ',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => hawamahal()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/hawa-mahal.png',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Hawa Mahal',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ))
                  ]),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => chittorgarh()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/chittorgarh.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Chittorgarh',
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
                      MaterialPageRoute(builder: (context) => amber()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/amberfort.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Amber Fort',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ))
                  ]),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tajlake()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/tajlakepalace.jpeg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Taj Lake Palace',
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
