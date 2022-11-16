
import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/main_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/83/a6/8e/83a68ede151a440ec4e433ca578daaa3.jpg'),
            opacity: 10,
            fit: BoxFit.cover,
          ),
        ),
        child: Expanded(child: Column(
          children: <Widget>[
            //logo
            Center(
              child: Column(
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.fromLTRB(30,300,30,30),
                    child: const TextField(
                      obscureText: false,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.account_box),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        labelText: 'JMBG',
                      ),
                    ),
                  ),



                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: const TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child:   Container(
                      width: 100,
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context)=>const DesignBlog()),
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      "Don't have an Account? Register !",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
