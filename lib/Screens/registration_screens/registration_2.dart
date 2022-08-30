import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:piko/Screens/registration_screens/registration_3.dart';

import 'package:piko/Screens/registration_screens/widgets.dart';

class Registration2 extends StatefulWidget {
  static const String id = 'registration_screen2';
  const Registration2({Key? key}) : super(key: key);

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  final _numberTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionB(
          onPressed: (){
            Navigator.pushNamed(context, Registration3.id);
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
            onTap:() => Navigator.pop(context),
          ),
        ),
        backgroundColor: Color(0xFF4A3F69),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'What\'s your number?',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We\'ll send you a code to verify your number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                
                hintText: 'Phone Number',
                hintStyle: TextStyle(
                  color: Colors.white70
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'NG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            )
          ],
        ),
      ),
    );
  }
}
