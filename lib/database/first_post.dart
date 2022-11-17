import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class FirstPost extends StatelessWidget {

  const FirstPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: firstPostWidget(),
    );
  }
}


Widget firstPostWidget() {
  return InkWell(
    onTap: () {},
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
            child: Image.network(
              'https://storage.radiosarajevo.ba/article/324809/871x540/vik_radovi_facebook.jpg?v1548076008',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8),
            width: double.infinity,
            child: Text(
                "Ulica koja je najprometnija je trenutno zatvorena zbog cijevi koja je pukla i trenutno nije u funkciji da se saobracaj odvija bezbjedno"),
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(
                  size: 15,
                  likeCount: 22,
                  countPostion: CountPostion.bottom,
                ),
                action(Icons.where_to_vote_outlined, 88),
              ],
            ),
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
