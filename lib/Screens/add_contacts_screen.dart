import 'package:flutter/material.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final _contactTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A3F69),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment(-0.8, -1),
            child: Text(
              'Add Contacts',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Add Friends who are already on Piko or invite them to join!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            width: 345,
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: _contactTextController,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/Man1.jpg'),
                ),
                title: Text('Davell Warner', style: TextStyle(color: Colors.white),),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add', style: TextStyle(color: Colors.purple),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white 
                  ),
                  
              
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
