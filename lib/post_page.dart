import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/main_page.dart';
import 'package:flutter_gitprojects/user_profile.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('E-Narod'),
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              var route = MaterialPageRoute(builder: (context) => DesignBlog());
              Navigator.push(context, route);
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
        ),
        body: secondBlog(),
      ),
    );
  }
}

Widget secondBlog() {
  return SingleChildScrollView(
    child: InkWell(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        print('293193127 just voted!');
                        print('Total ammount of voters: 2132');
                      },
                      child: const Text('Vote'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
