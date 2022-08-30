import 'package:flutter/material.dart';

class FloatingActionB extends StatelessWidget {
  final VoidCallback onPressed;
  const FloatingActionB({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: onPressed,
          child: const Icon(
            Icons.arrow_forward,
            color: Color(0xFF4A3F69),
            size: 35,
          ),
        );
    
  }
}

class CustomListTile extends StatelessWidget {
  late String imageLocation;
  late String name;
  CustomListTile({
    Key? key, required this.imageLocation, required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
       
        backgroundImage: AssetImage(imageLocation)
        
      ),
      title: Text(name, style: TextStyle(color: Colors.white),),
      trailing: ElevatedButton(
        onPressed: () {},
        child: Text('Add', style: TextStyle(color: Colors.purple),),
        style: ElevatedButton.styleFrom(
          primary: Colors.white 
        ),
        
    
      ),
    );
  }
}


