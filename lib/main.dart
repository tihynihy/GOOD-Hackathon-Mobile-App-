import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/main_page.dart';
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
      home: LoginPage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 0, 37),
          title: Text("GOODHackathon Project"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: size.width,
            child: Column(
              children: [
                Container(
                  width: 200,
                  margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'JMBG',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  width: 250,
                  height: 50,
                  child: MaterialButton(
                    shape: const StadiumBorder(),
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (context) => const DesignBlog());
                      Navigator.push(context, route);
                    },
                    child: const Text("Login"),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
