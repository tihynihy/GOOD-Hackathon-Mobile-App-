import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/Introduction.dart';
import 'package:flutter_gitprojects/Simple_DesignBlog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter tutorial",
      home: Home(),
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
        backgroundColor: Colors.red,
        title: Text("Home page"),
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(
          Icons.home,
          size: 22.0,
        ),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.edit),
        ],
        elevation: 30.0,
        shadowColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          width: size.width,
          child: Column(
            children: [
              Container(
                width: size.width,
                child: MaterialButton(
                  shape: StadiumBorder(),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => IntroductionClass());
                    Navigator.push(context, route);
                  },
                  child: Text("Introduction"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
              Container(
                width: size.width,
                child: MaterialButton(
                  shape: StadiumBorder(),
                  onPressed: () {
                    var route =
                        MaterialPageRoute(builder: (context) => DesignBlog());
                    Navigator.push(context, route);
                  },
                  child: Text("Design Blog Class"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
