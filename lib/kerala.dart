import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/alleppey.dart';
import 'package:flutter_application_2/ashtamudi.dart';
import 'package:flutter_application_2/first.dart';
import 'package:flutter_application_2/munnar.dart';
import 'package:flutter_application_2/wayanad.dart';

class Kerala extends StatefulWidget {
  const Kerala({Key? key}) : super(key: key);

  @override
  State<Kerala> createState() => _KeralaState();
}

class _KeralaState extends State<Kerala> {
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
          'Kerala',
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
                      MaterialPageRoute(builder: (context) => wayanad()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/wayanad.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Wayanad',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ))
                  ]),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => alleppey()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/alleppey.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Alleppey',
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
                      MaterialPageRoute(builder: (context) => munnar()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/munnar.png',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Munnar',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ))
                  ]),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ashtamudi()),
                    );
                  },
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'images/ashtamudi.jpg',
                        height: 180,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Ashtamudi',
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
