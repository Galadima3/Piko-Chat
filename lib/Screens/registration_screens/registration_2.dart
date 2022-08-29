import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:piko/Screens/registration_screens/widgets.dart';

class Registration2 extends StatefulWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  final _numberTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionB(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 35,
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
          InternationalPhoneNumberInput(
            onInputChanged: (value) {},
           
            cursorColor:  Colors.white,
            formatInput: false,
            selectorConfig: SelectorConfig(
              showFlags: true,
              selectorType: PhoneInputSelectorType.DROPDOWN
            ),
            inputDecoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 15, left: 0),
              border: InputBorder.none,
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                color: Colors.white70,
                fontSize: 20

              ),
            ),
          )
        ],
      ),
    );
  }
}
