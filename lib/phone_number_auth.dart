import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'main_page.dart';

class PhoneAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/originals/83/a6/8e/83a68ede151a440ec4e433ca578daaa3.jpg'),
                opacity: 10,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.fromLTRB(0, 220, 50, 0),
                  child: Text(
                    'Sign Up with your Phone Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                PhoneNumAuthentication(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PhoneNumAuthentication extends StatefulWidget {
  @override
  _PhoneNumAuthenticationState createState() => _PhoneNumAuthenticationState();
}

class _PhoneNumAuthenticationState extends State<PhoneNumAuthentication> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        width: 400,
        margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              formatInput: false,
              keyboardType:
              TextInputType.numberWithOptions(signed: true, decimal: true),
              inputBorder: OutlineInputBorder(),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>const DesignBlog()),
                );
              },
              child: Text('Validate'),
            ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}