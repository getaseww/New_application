import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text("Contact us")),
        backgroundColor: Colors.blue[700],
        leading:IconButton(
            icon: Icon(Icons.arrow_back,color:Colors.black),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
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
          ListTile(
            leading: Icon(Icons.phone_android,color: Colors.black87,),
            title: Text("Phone",style: TextStyle(fontSize: 20,color: Colors.red),),
            subtitle: Text("+251 00 00 00 00",style: TextStyle(fontSize: 16,color: Colors.blue),),
          ),
          Divider(
            height: 50,
            color: Colors.black87,
          ),
          ListTile(
            leading: Icon(Icons.mail,color: Colors.red,),
            title: Text("Email",style: TextStyle(fontSize: 20,color: Colors.red),),
            subtitle: Text("walelign@gmail.com",style: TextStyle(fontSize: 16,color: Colors.blue),),
          ),
          Divider(
            height: 50,
            color: Colors.black87,
          ),
          ListTile(
            leading:FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
            title: Text("Facebook",style: TextStyle(fontSize: 20,color: Colors.red),),
            subtitle: Text("facebook.com/",style: TextStyle(fontSize: 16,color: Colors.blue),),
          ),
          Divider(
            height: 50,
            color: Colors.black87,
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.telegram ,color: Colors.teal,),
            title: Text("Telegram",style: TextStyle(fontSize: 20,color: Colors.red),),
            subtitle: Text("t.me/geta",style: TextStyle(fontSize: 16,color: Colors.blue),),
          ),
          Divider(
            height: 50,
            color: Colors.black87,
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue,),
            title: Text("Linkedin",style: TextStyle(fontSize: 20,color: Colors.red),),
            subtitle: Text("linkedin.com/in/get",style: TextStyle(fontSize: 16,color: Colors.blue),),
          ),
          Divider(
            height: 50,
            color: Colors.black87,
          ),
          ListTile(
            leading: Icon(Icons.location_on,color: Colors.blue,),
            title: Text("Location",style: TextStyle(fontSize: 20,color: Colors.red),),
            subtitle: Text("Debre Markos,Ethiopia",style: TextStyle(fontSize: 16,color: Colors.blue),),
          ),
          Divider(
            height: 50,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}