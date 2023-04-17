import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/payment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class flight extends StatefulWidget {
  const flight({Key? key}) : super(key: key);

  @override
  State<flight> createState() => _flightState();
}

class _flightState extends State<flight> {
  final items = [
    'Economic Class',
    'Bussiness Class',
    'First Class',
  ];
  String? value;
  TextEditingController _date = TextEditingController();
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ));

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
            'Indian Airways',
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
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              top: 50,
              left: 20,
              child: Text(
                'Information',
                style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    wordSpacing: 5,
                    fontSize: 27,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            Positioned(
                top: 100,
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
                        Icons.airplanemode_active,
                        size: 30,
                        color: Color.fromARGB(136, 255, 255, 255),
                      ),
                      labelText: 'From',
                      border: UnderlineInputBorder(),
                      counterText: '',
                      fillColor: Color(0xffFFFEFE),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 238, 239, 245)),
                      ),
                      labelStyle: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: Color.fromARGB(160, 255, 255, 255))),
                )),
            Positioned(
                top: 170,
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
                        Icons.location_on,
                        size: 30,
                        color: Color.fromARGB(136, 255, 255, 255),
                      ),
                      labelText: 'Destination',
                      border: UnderlineInputBorder(),
                      counterText: '',
                      fillColor: Color(0xffFFFEFE),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 238, 239, 245)),
                      ),
                      labelStyle: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: Color.fromARGB(160, 255, 255, 255))),
                )),
            Positioned(
                top: 100,
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
                        Icons.airplanemode_active_outlined,
                        size: 30,
                        color: Color.fromARGB(136, 255, 255, 255),
                      ),
                      labelText: 'From',
                      border: UnderlineInputBorder(),
                      counterText: '',
                      fillColor: Color(0xffFFFEFE),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 238, 239, 245)),
                      ),
                      labelStyle: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: Color.fromARGB(160, 255, 255, 255))),
                )),
            Positioned(
                top: 245,
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
                        color: Color.fromARGB(136, 255, 255, 255),
                      ),
                      labelText: 'Traveler Name',
                      border: UnderlineInputBorder(),
                      counterText: '',
                      fillColor: Color(0xffFFFEFE),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 238, 239, 245)),
                      ),
                      labelStyle: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: Color.fromARGB(160, 255, 255, 255))),
                )),
            Positioned(
                top: 320,
                left: 40,
                right: 200,
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

                      labelText: 'Age',
                      border: UnderlineInputBorder(),
                      counterText: '',
                      fillColor: Color(0xffFFFEFE),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 238, 239, 245)),
                      ),
                      labelStyle: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: Color.fromARGB(160, 255, 255, 255))),
                )),
            Positioned(
                top: 320,
                left: 200,
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
                          fontSize: 19,
                          color: Color.fromARGB(160, 255, 255, 255))),
                )),
            Positioned(
                top: 400,
                left: 40,
                right: 40,
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
                      labelText: 'Date (yyyy-MM-dd)',
                      hintText: 'yyyy-MM-dd',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(184, 255, 255, 255),
                          fontSize: 18)),
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
                top: 460,
                left: 40,
                child: Row(
                  children: [
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(top: 27, right: 7),
                        child: Icon(
                          Icons.card_travel_outlined,
                          color: Color.fromARGB(167, 255, 255, 255),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Container(
                        child: Text(
                          'Select CLass :',
                          style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              wordSpacing: 0,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0, top: 30),
                      padding: EdgeInsets.only(left: 20, right: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(0, 0, 0, 0), width: 4)),
                      child: DropdownButton<String>(
                        value: value,
                        iconSize: 40,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        focusColor: Color.fromARGB(255, 64, 255, 80),
                        dropdownColor: Color.fromARGB(171, 77, 122, 199),
                        items: items.map(buildMenuItem).toList(),
                        onChanged: ((value) =>
                            setState(() => this.value = value)),
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: 580,
              left: 100,
              right: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(0, 255, 255, 255),
                            shadowColor: Colors.transparent,
                            elevation: 0),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => payment(),
                      ));
                },
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Color.fromARGB(0, 255, 255, 255)),
                    gradient: LinearGradient(
                        colors: const [Color(0xff0075A4), Color(0xff7A3885)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                      constraints: BoxConstraints(maxWidth: 200, maxHeight: 58),
                      alignment: Alignment.center,
                      child: Text('Submit',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 28,
                              color: Color(0xffFFFFFF)))),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
