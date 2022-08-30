import 'package:flutter/material.dart';
import 'package:piko/Screens/add_contacts_screen.dart';

import 'package:piko/Screens/registration_screens/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Registration3 extends StatefulWidget {
  static const String id = 'registration_screen3';
  const Registration3({Key? key}) : super(key: key);

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
  final _OTPtextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A3F69),
      floatingActionButton: FloatingActionB(
        onPressed: () {
          Navigator.pushNamed(context, AddContactScreen.id);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment(-0.65, -1),
            child: Text(
              'What\'s the Code?',
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
          Align(
            alignment: Alignment(-0.65, -1),
            child: Text(
              'Enter the OTP sent to your number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OtpTextField(
            //cursorColor: Colors.white,
            textStyle: TextStyle(color: Colors.white),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: false,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(-0.75, -1),
                child: Text(
                  'Didn\'t recieve a code? ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Send Again',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
