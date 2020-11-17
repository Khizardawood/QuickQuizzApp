import 'package:flutter/material.dart';
import 'package:quizzassign/homepage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(Splashscreen());
}

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: homepage(),
          backgroundColor: Colors.black,
          title: Text("Quick Quizzz",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color: Color.fromARGB(225, 251, 221, 76))),
          image: Image.asset('images/hhh.png'),
          photoSize: 100.0,
          loaderColor: Color.fromARGB(225, 251, 221, 76)),
      debugShowCheckedModeBanner: false,
    );
  }
}
