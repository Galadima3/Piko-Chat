import 'dart:async';

import 'package:flutter/material.dart';
import 'package:piko/Screens/add_contacts_screen.dart';
import 'package:piko/Screens/registration_screens/registration_1.dart';
import 'package:piko/Screens/registration_screens/registration_2.dart';
import 'package:piko/Screens/registration_screens/registration_3.dart';
import 'package:piko/Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Registration1.id: (context) => Registration1(),
        '/third': (context) => Registration2(),
        Registration3.id: (context) => Registration3(),
        AddContactScreen.id: (context) => AddContactScreen(),
      },
      home: WelcomeScreen(),
    );
  }
}
