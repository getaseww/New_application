import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/sport.dart';
import 'api_util.dart';
class SportPostApi{
  Future<List<Sport>> get sportPosts => null;

 Future<List<Sport>> fetchAllSportPosts() async{
    String allSportPosts= ApiUtil.MAIN_API_URL+ApiUtil.ALL_SPORT_POSTS;
    try {
      Map<String,String> headers={
     'Accept' :'application/json'
    };
    var response =await http.get(allSportPosts,headers: headers);
    List<Sport> sportPosts=[];
    if(response.statusCode==200){
     List<dynamic> body = jsonDecode(response.body);
     for(var item in body){
       Sport sportPost =Sport.fromJson(item);
       sportPosts.add(sportPost);
     }
    }
     return sportPosts; 
    } catch (e) {
      print("$e error");
    }
     return sportPosts;
  }
}
