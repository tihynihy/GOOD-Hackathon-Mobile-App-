import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/main_page.dart';
import 'package:page_transition/page_transition.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              Navigator.push(context, PageTransition(child: MainPage(), type:PageTransitionType.rightToLeft));
            },
          ),
          title: Text("rijesi.ba"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              width: 200,
              height: 200,
              child:  Center(
                child: Image.network('https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_1280.png'),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(100, 20, 0, 0),
                  child: Text(
                    'Blake Jon',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Icon(Icons.verified_user),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(100, 20, 0, 0),
                  child: Text(
                    'Sarajevo, BiH',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Icon(Icons.location_on_outlined),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(100, 20, 0, 0),
                  child: Text(
                    'Posts Posted: 14',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Icon(Icons.post_add_outlined),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(100, 20, 0, 0),
                  child: Text(
                    'Edit profile',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Icon(Icons.edit),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
