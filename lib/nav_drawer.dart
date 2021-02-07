import 'package:flutter/material.dart';
import 'saved_posts.dart';
import 'about_us.dart';
import 'contact_us.dart';
import 'privacy_policy.dart';
import 'terms.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    currentAccountPicture: ClipOval(child: Image.asset("images/icon.jpg"),),
                    accountName: Text("Hule Addis",style: TextStyle(fontSize: 18),),
                    accountEmail: Text("getas.walelign@gmail.com",style: TextStyle(fontSize: 16),),
                    arrowColor: Colors.red,
                  ),
                  
                  ListTile(
                    title: Text("Saved Posts",style: TextStyle(fontSize: 18),),
                    leading: Icon(Icons.bookmark_border,color: Colors.black,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return SavedPost();
                          }
                        )
                      );
                    },
                  ),
                  Divider(
                  height: 10.0,
                  color: Colors.black,
                  ),
                  ListTile(
                    title: Text("Contact Us",style: TextStyle(fontSize: 18),),
                    leading: Icon(Icons.mail,color: Colors.black,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return ContactPage();
                          }
                        )
                      );
                    },

                  ),
                  ListTile(
                    title: Text("About",style: TextStyle(fontSize: 18),),
                    leading: Icon(Icons.info,color: Colors.black,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return AboutPage();
                          }
                        )
                      );
                    },

                  ),
                  ListTile(
                    title: Text("Privacy Policy",style: TextStyle(fontSize: 18),),
                    leading: Icon(Icons.security,color: Colors.black,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return PrivacyPage();
                          }
                        )
                      );
                    },
                  ),

                  ListTile(
                    title: Text("Terms and conditions",style: TextStyle(fontSize: 18),),
                    leading: Icon(Icons.assignment,color: Colors.black,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return TermsPage();
                          }
                        )
                      );
                    },
                  ),
                  Divider(
                  height: 10.0,
                  color: Colors.black,
                  ),
                  ListTile(
                    title: Text("Exit",style: TextStyle(fontSize: 18),),
                    trailing: Icon(Icons.close,color: Colors.black,),
                    onTap:(){
                      Navigator.of(context).pop();
                    }, 
                  ),
                ],
              ),
              
    );   
  }
}