import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:flutter_gitprojects/job_done.dart';
import 'package:page_transition/page_transition.dart';

import 'main_page.dart';

class FastFormWidget extends StatelessWidget {
  const FastFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Prijavni obrazac';

    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
        return CupertinoApp(
          title: title,
          home: FormPage(title: title),
        );

      case TargetPlatform.android:
      default:
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: FormPage(title: title),
        );
    }
  }
}

class FormPage extends StatelessWidget {
  FormPage({super.key, required this.title});

  final formKey = GlobalKey<FormState>();
  final String title;

  @override
  Widget build(BuildContext context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      default:
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FastForm(
                      formKey: formKey,
                      children: _buildForm(context),
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Form changed: ${value.toString()}');
                      },
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(70, 50, 0, 0),
                      child: Row(
                        children: [
                          Container(
                            child: ElevatedButton(
                              child: const Text('Prijavi'),
                              onPressed: () {
                                Navigator.push(context, PageTransition(child: JobDone(), type: PageTransitionType.rightToLeft));
                              },
                            ),
                          ),
                          SizedBox(width: 100,),
                          Container(
                            child: ElevatedButton(
                              child: const Text('Odustani'),
                              onPressed: () {
                                Navigator.push(context, PageTransition(child: MainPage(), type: PageTransitionType.rightToLeft));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
    }
  }

  List<Widget> _buildForm(BuildContext context) {
    return [
      Column(
        children: [
          FastFormSection(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            header: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Prijava',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            children: [
              FastAutocomplete<String>(
                name: 'Grad',
                labelText: 'Grad',
                options: const ['Sarajevo', 'Bihac', 'Konjic', 'Zenica'],
              ),
              FastAutocomplete<String>(
                name: 'Ulica',
                labelText: 'Ulica',
                options: const ['Grbavica 1', 'Zmaja od Bosne 25', 'Skenderija 33', 'Bulevar Mese Selimovica'],
              ),
              FastDatePicker(
                name: 'Datum objave',
                labelText: 'Datum objave',
                firstDate: DateTime(1970),
                lastDate: DateTime(2040),
              ),
              const FastTimePicker(
                name: 'time_picker',
                labelText: 'Vrijeme objave',
              ),
              FastTextField(
                name: 'Opis slucaja',
                labelText: 'Opis slucaja',
                placeholder: 'Primjer: Opisi uticaj na okolinu, itd...',
                maxLength: 500,
                prefix: const Icon(Icons.description_outlined),
                buildCounter: inputCounterWidgetBuilder,
                inputFormatters: const [],
                validator: Validators.compose([
                  Validators.required((value) => 'Field is required'),
                  Validators.minLength(
                      7,
                          (value, minLength) =>
                      'Field must contain at least $minLength characters')
                ]),
              ),
            ],
          ),
          Container(
            //image of the picture taken before submiting
          ),
        ],

      ),
    ];
  }

}
