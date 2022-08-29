import 'package:flutter/material.dart';

class FloatingActionB extends StatelessWidget {
  const FloatingActionB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.arrow_forward,
            color: Color(0xFF4A3F69),
            size: 35,
          ),
        );
    
  }
}

