import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/post_page.dart';

import 'Introduction.dart';

class DesignBlog extends StatefulWidget {
  const DesignBlog({Key? key}) : super(key: key);

  @override
  State<DesignBlog> createState() => _DesignBlogState();
}

class _DesignBlogState extends State<DesignBlog> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            ),
          ],
          title: Text("E-Narod"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            singleBlog(),
            secondBlog(),
            thirdBlog(),
            forthBlog(),
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
                  Container(
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => IntroductionClass());
                        Navigator.push(context, route);
                      },
                      child: Text("Vote"),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                  ),
                  Container(
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => MainScreen());
                        Navigator.push(context, route);
                      },
                      child: Text("Otvori objavu"),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                  ),
                  action(Icons.share, 88),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget secondBlog() {
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
                'https://bosnainfo.ba/wp-content/uploads/2022/07/h550-2-427x285.jpg',
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
                  action(Icons.thumb_up, 22),
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

  Widget thirdBlog() {
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
                'https://www.rtvbn.com/storage/news/2021-12-15/1639560543_sarajevo-izgorio-automobil-pozar-zahvatio-jos-dva.jpg',
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

  Widget forthBlog() {
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
                'https://storage.radiosarajevo.ba/image/577923/871x540/grbavica_smece_novo_sarajevo_opcina.png',
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
                  action(Icons.thumb_up, 90),
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
}
