import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/andamans.dart';
import 'package:flutter_application_2/bhimtal.dart';
import 'package:flutter_application_2/congragualtion.dart';
import 'package:flutter_application_2/first.dart';
import 'package:flutter_application_2/flight.dart';
import 'package:flutter_application_2/main_page.dart';
import 'package:flutter_application_2/netbanking.dart';
import 'package:flutter_application_2/ooty1.dart';
import 'package:flutter_application_2/payment.dart';
import 'package:flutter_application_2/paytm.dart';
import 'package:flutter_application_2/registration.dart';
import 'package:flutter_application_2/shimla.dart';
import 'package:flutter_application_2/signup.dart';
import 'package:flutter_application_2/thar.dart';
import 'package:flutter_application_2/train.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color.fromARGB(45, 40, 148, 184)));
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    // scaffoldMessengerKey: Utils.messengerKey,
    debugShowCheckedModeBanner: false,
    home: registration(),
  ));
}
