//GOOD Hackathon Project
//Winners of the 2022 GOOD Hackathon
//Designed by Nihad Jusovic - tihynihy
//rijesi.ba - mobile version

import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/phone_number_auth.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneAuth(),
    );
  }
}


