import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/map_screen.dart';
import 'package:flutter_gitprojects/slider_page.dart';
import 'package:like_button/like_button.dart';
import '../user_profile.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class FirstPost extends StatelessWidget {

  const FirstPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              Navigator.push(context, PageTransition(child: UserProfile(), type: PageTransitionType.rightToLeft));
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                var route = MaterialPageRoute(
                    builder: (context) => UserProfile());
                Navigator.push(context, route);
              },
              icon: Icon(Icons.account_circle),
            ),
          ],
          title: Text("rijesi.ba"),
          centerTitle: true,
        ),

        body: firstPostWidget(),

      ),
    );
  }
}


Widget firstPostWidget() {
  return SingleChildScrollView(
    child: Card(
      elevation: 5,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Row(children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/Image/1.jpg"),
              ),
              SizedBox(
                width: 5,
              ),
              Text("user 2132921"),
              Expanded(
                  child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Thurs 5.00pm"))),
            ]),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8),
            width: double.infinity,
            child: Text(
              "Ulica koja je najprometnija je trenutno zatvorena zbog cijevi koja je pukla i trenutno nije u funkciji da se saobracaj odvija bezbjedno",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: "Roboto"),
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            child: SliderP(),
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
          ),
        ],
      ),
    ),
  );
}

Widget action(IconData icon, count) {
  var color = Colors.black;
  if (count > 0) {
    color = Color.fromARGB(255, 64, 137, 255);
  }
  return InkWell(
    onTap: () {
      setState(() {
        count = count + 1;
      });
    },
    child: Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          width: 5,
        ),
        Text("${count}")
      ],
    ),
  );
}

void setState(Null Function() param0) {

}
