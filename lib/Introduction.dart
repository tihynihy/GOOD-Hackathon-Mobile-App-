import 'package:flutter/material.dart';

class IntroductionClass extends StatefulWidget {
  const IntroductionClass({Key? key}) : super(key: key);

  @override
  State<IntroductionClass> createState() => _IntroductionClassState();
}

class _IntroductionClassState extends State<IntroductionClass> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text("colors algn its children vertically"),
                    Container(
                      width: size.width / 2,
                      height: 50,
                      color: Colors.blue,
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Container(
                      width: size.width / 2,
                      height: 50,
                      color: Colors.blue,
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                    ),
                    Container(
                      width: size.width / 2,
                      height: 50,
                      color: Colors.blue,
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                    )
                  ],
                ),
              ),

              ///////////Row////////////////////////

              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text("row align its children horizontally"),
                    Row(
                      children: [
                        Container(
                          width: size.width / 6,
                          height: 50,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 3, right: 3),
                          child: Text("1"),
                        ),
                        Container(
                          width: size.width / 6,
                          height: 50,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 3, right: 3),
                          child: Text("2"),
                        ),
                        Container(
                          width: size.width / 6,
                          height: 50,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 3, right: 3),
                          child: Text("3"),
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                child: Card(
                  margin: EdgeInsets.all(5),
                  elevation: 30,
                  child: Container(
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text("Obi Somto"),
                      subtitle: Text("A very big boy"),
                      trailing: Column(
                        children: [Icon(Icons.remove_red_eye), Text("400")],
                      ),
                    ),
                  ),
                ),
              ),

              ///////////////////////CONTAINER///////////////////
              Column(children: [
                Container(
                    height: 100,
                    width: size.width / 3,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.redAccent, width: 5))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 100,
                    width: size.width / 3,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border(
                          bottom: BorderSide(color: Colors.yellow, width: 5),
                        ))),
                Container(
                  width: size.width / 3,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: size.width / 3,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.elliptical(7, 9),
                            topLeft: Radius.circular(50))),
                    child: Center(
                      child: Text("continue"),
                    )),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
