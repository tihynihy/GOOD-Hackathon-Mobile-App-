import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:flutter_gitprojects/main_page.dart';
import 'package:flutter_gitprojects/fast_form_template.dart';
import 'package:page_transition/page_transition.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return FlutterCamera(
      color: Colors.amber,
      onImageCaptured: (value) {
        final path = value.path;
        print("::::::::::::::::::::::::::::::::: $path");
        if (path.contains('.jpg')) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Container(
                    height: 570,
                    child: Column(
                      children: [
                        Image.file(File(path)),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            children: [
                              ElevatedButton(onPressed: () {
                                Navigator.push(context, PageTransition(child: FastFormWidget(), type: PageTransitionType.rightToLeft));
                              }, child: Text('Report')),
                              SizedBox(width: 100,),
                              ElevatedButton(onPressed: () {
                                Navigator.push(context, PageTransition(child: MainPage(), type: PageTransitionType.rightToLeft));
                              }, child: Text('Abort')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        }
      },
      onVideoRecorded: (value) {
        final path = value.path;
        print('::::::::::::::::::::::::;; dkdkkd $path');
        ///Show video preview .mp4
      },
    );
    // return Container();
  }
}