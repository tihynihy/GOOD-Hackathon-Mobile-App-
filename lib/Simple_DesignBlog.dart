import 'package:flutter/material.dart';

class DesignBlog extends StatefulWidget {
  const DesignBlog({Key? key}) : super(key: key);

  @override
  State<DesignBlog> createState() => _DesignBlogState();
}

class _DesignBlogState extends State<DesignBlog> {
  //**The Entire Code Teaches you simple web blog designs that can be used for your app */

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Design"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            singleBlog(),
            singleBlog(),
            singleBlog(),
            singleBlog(),
          ],
        ));
  }

  Widget singleBlog() {
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
                Text("Obi Somto"),
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
                "The [child] contained by the container If null, and if the [constraints] are unbounded a\n or also null, the container will expand to fill all available space in its parent, unless the parent provides unbounded constraints",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "Roboto"),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                "assets/Image/1.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Text(
                  "The [child] contained by the container If null, and if the unless the parent provides unbounded constraints"),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  action(Icons.thumb_up, 74),
                  action(Icons.message, 67),
                  action(Icons.share, 88),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget action(IconData icon, count) {
    var color = Colors.black;
    if (count > 0) {
      color = Colors.pinkAccent;
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
}
