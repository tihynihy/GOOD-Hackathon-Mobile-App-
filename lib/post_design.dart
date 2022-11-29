import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/comment_page.dart';
import 'package:flutter_gitprojects/slider_page.dart';
import 'package:like_button/like_button.dart';
import 'user_profile.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share/share.dart';



class PostDesign extends StatelessWidget {

  const PostDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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

        body: firstPostWidget(context),

      ),
    );
  }
}


Widget firstPostWidget(BuildContext context) {
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
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 500,
            child: SliderP(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
            width: 400,
            height: 250,
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            width: 350,
            height: 300,
            child: Image.network('https://www.google.com/maps/d/thumbnail?mid=1rlJkzjNS-LuZhENTMqv3cHNvbjg'),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              ),
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              children: [
                LikeButton(
                  size: 15,
                  likeCount: 9,
                  countPostion: CountPostion.bottom,
                ),
                SizedBox(width: 30),
                Container(
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (context) => CommentWidget());
                      Navigator.push(context, route);
                    },
                    child: Text("Comments"),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(width: 30),
               IconButton(onPressed: () {
                 Share.share('https://www.klix.ba/biznis/studenti-kreirali-rjesenja-za-unapredjenje-zivota-u-lokalnim-zajednicama/221018093');
               }, icon: Icon(Icons.share),)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
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
