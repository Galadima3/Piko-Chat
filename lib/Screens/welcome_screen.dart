import 'package:flutter/material.dart';
import 'package:piko/Screens/add_contacts_screen.dart';
import 'package:piko/Screens/registration_screens/registration_1.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF4B088A),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/flutter.png'),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Piko - Video Call & Messaging App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Registration1.id);
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF4B088A),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(275, 48),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ],
        ),
    
        //use CircleAvatar Widget for intro image
      ),
    );
  }
}
