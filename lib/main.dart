import 'package:flutter/material.dart';
import 'package:piko/Screens/add_contacts_screen.dart';
import 'package:piko/Screens/registration_screens/registration_3.dart';


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
      home: AddContactScreen(),
    );
  }
}
