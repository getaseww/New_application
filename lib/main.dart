//import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main(){
   runApp(NewsApp());

}
class NewsApp extends StatefulWidget {
  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

