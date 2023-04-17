import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/first.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
  void main() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.amber));
  }
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  // String username = '';
  // String password = '';
  final emailcController = TextEditingController();
  final passwordController = TextEditingController();
  String username = '';
  String password = '';

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80')),
            ),
          ),
          Container(
            child: Expanded(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          wordSpacing: 5,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30, bottom: 22),
                    margin: EdgeInsets.only(
                        top: 25, left: 30, right: 30, bottom: 0),
                    child: TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      cursorHeight: 25,

                      style: TextStyle(fontSize: 20, color: Colors.white),
                      controller: emailcController,
                      // onChanged: (val) {
                      //   setState(() => username = val);
                      // },
                      // validator: (val) {
                      //   if (val == null || val.isEmpty) {
                      //     return 'Enter Your username';
                      //   }
                      // },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 30,
                            color: Color.fromARGB(136, 255, 255, 255),
                          ),
                          labelText: 'Registered Email',
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
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    margin: EdgeInsets.only(top: 0, left: 30, right: 30),
                    child: TextFormField(
                      cursorHeight: 25,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      obscureText: true,
                      controller: passwordController,
                      // validator: (val) {
                      //   if (val == null || val.isEmpty) {
                      //     return 'Enter The credentials';
                      //   }
                      // },
                      // onChanged: (val) {
                      //   setState(() => password = val);
                      // },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 30,
                            color: Color.fromARGB(147, 246, 243, 243),
                          ),
                          labelText: 'Password',
                          border: UnderlineInputBorder(),
                          fillColor: Color(0xffFFFEFE),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 238, 239, 245)),
                          ),
                          labelStyle: GoogleFonts.montserrat(
                              fontSize: 19,
                              color: Color.fromARGB(160, 255, 255, 255))),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 36),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(height: 42, width: 127),
                        child: ElevatedButton(
                          onPressed: signIn,
                          child: Text(
                            'Login',
                            style: GoogleFonts.montserrat(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              primary: Color(0xff1B7084),
                              shadowColor: Color(0xff1B7084),
                              elevation: 3),
                        ),
                      ))
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
