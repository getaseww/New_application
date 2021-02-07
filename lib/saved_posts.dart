import 'package:flutter/material.dart';

class SavedPost extends StatefulWidget {
  @override
  _SavedPostState createState() => _SavedPostState();
}

class _SavedPostState extends State<SavedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text("Saved Posts")),
        backgroundColor: Colors.blue[700],
        leading:IconButton(
            icon: Icon(Icons.arrow_back,color:Colors.black),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
      ),
      body: Center(
        child: Text("Cooming Soon...",style: TextStyle(fontSize: 22),),
      ),

    );
  }
}