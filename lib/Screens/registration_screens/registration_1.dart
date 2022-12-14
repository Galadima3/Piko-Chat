import 'package:flutter/material.dart';
import 'package:piko/Screens/registration_screens/registration_2.dart';
import 'package:piko/Screens/registration_screens/widgets.dart';

class Registration1 extends StatefulWidget {
  static const String id = 'registration_screen1';
  const Registration1({Key? key}) : super(key: key);

  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final _NametextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //TODO: set entire Scaffold alignment => alignment: Alignment(-0.8, -1),
      child: Scaffold(
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
                  'What\'s your name?',
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
              SizedBox(
                width: 350,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: _NametextController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: 'John Doe',
                    hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          floatingActionButton: FloatingActionB(
            onPressed: () => Navigator.pushNamed(context, Registration2.id),
          )),
    );
  }
}
