import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/database/first_post.dart';
import 'package:flutter_gitprojects/post_page.dart';
import 'package:flutter_gitprojects/user_profile.dart';
import 'package:like_button/like_button.dart';
import 'package:sidebarx/sidebarx.dart';


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
        drawer: SidebarX(controller: SidebarXController(selectedIndex: 0),
        items: const[
          SidebarXItem(icon: Icons.home),
          SidebarXItem(icon: Icons.account_box),
          SidebarXItem(icon: Icons.how_to_vote),
          SidebarXItem(icon: Icons.bar_chart_outlined),
          SidebarXItem(icon: Icons.settings),
          SidebarXItem(icon: Icons.logout),
          ],
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
                  LikeButton(
                    size: 15,
                    likeCount: 22,
                    countPostion: CountPostion.bottom,
                  ),
                  Container(
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => FirstPost());
                        Navigator.push(context, route);
                      },
                      child: Text("Otvori objavu"),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
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
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LikeButton(
                    size: 15,
                    likeCount: 13,
                    countPostion: CountPostion.bottom,
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
                  action(Icons.where_to_vote_outlined, 42),
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
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LikeButton(
                    size: 15,
                    likeCount: 10,
                    countPostion: CountPostion.bottom,
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
                  action(Icons.where_to_vote_outlined, 322),
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
                        child: Text("Friday 8.00pm"))),
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
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LikeButton(
                    size: 15,
                    likeCount: 9,
                    countPostion: CountPostion.bottom,
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
                  action(Icons.where_to_vote_outlined, 16),
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