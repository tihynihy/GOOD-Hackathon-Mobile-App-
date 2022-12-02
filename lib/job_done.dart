import 'package:flutter/material.dart';
import 'package:flutter_gitprojects/main_page.dart';
import 'package:page_transition/page_transition.dart';
class JobDone extends StatelessWidget {
  const JobDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Center(
            child: Container(
              child: Column(
                children: [
                   Container(
                     width: 300,
                     height: 300,
                     child: Image(image: NetworkImage('https://img.pikbest.com/58pic/35/39/28/72558PICb58PIC458PICN58PIC7JYPT6n_PIC2018.gif!bw700')),
                   ),
                  Container(
                    child: Text('Uspjesno prijavljen slucaj!',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, PageTransition(child: MainPage(), type: PageTransitionType.rightToLeft));
                    }, child: Icon(Icons.home)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
