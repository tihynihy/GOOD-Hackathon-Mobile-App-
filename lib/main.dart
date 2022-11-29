//GOOD Hackathon Project
//Winners of the 2022 GOOD Hackathon
//Designed by Nihad Jusovic - tihynihy
//rijesi.ba - mobile version
import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/phone_number_auth.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:icons_launcher/cli_commands.dart';
import 'package:icons_launcher/utils/cli_logger.dart';
import 'package:icons_launcher/utils/constants.dart';
import 'package:icons_launcher/utils/icon.dart';
import 'package:icons_launcher/utils/template.dart';
import 'package:icons_launcher/utils/utils.dart';


void main() {
  runApp(SplashPage());
}

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: EasySplashScreen(
          logo: Image.network(
              'https://media.istockphoto.com/id/1168197884/vector/letter-r-design-vector-in-blue-green-gradient.jpg?s=612x612&w=0&k=20&c=o57Iw4jLZZd_pd7Y-MWzZYACdHwSOPNnZ3sJOm4TVb0='),
          title: Text(
            "Rijesi.ba",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          showLoader: true,
          navigator: PhoneAuth(),
          durationInSeconds: 7,
        ),
      ),

    );
  }
}


