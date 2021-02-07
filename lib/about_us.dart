import 'package:flutter/material.dart';
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text("About")),
        backgroundColor: Colors.blue[700],
        leading:IconButton(
            icon: Icon(Icons.arrow_back,color:Colors.black),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
      ),
      body:ListView(
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5,0.9],
                colors: [
                  Colors.red,
                  Colors.orange,
                ],
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 Center(
                   child: CircleAvatar(
                     maxRadius: 70,
                     backgroundColor: Colors.deepOrange,
                     child:ClipOval(
                       child: Image.asset("images/icon.jpg"),
                     )
                   ),
                 ),
              ],
            ),
          ),
          Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text("About the Application",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),)
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20),
                    child: Text("This application is developed to bring trusted news and informations from national and international sources to our users. We cover poletics, technology, business,sport and other news types. Stay tuned with us to get hot and unbiased informations.",style:TextStyle(fontSize:18,fontWeight: FontWeight.w400,color: Colors.black),),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text("Hule Addis Version 1.0.0",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.teal),)
                ),
              ]
            ),
          ),
        ],
      )
    );
  }
}
