import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/home.dart';
import 'api_util.dart';
class HomePostApi{
  Future<List<Home>> get homePosts => null;

 Future<List<Home>> fetchAllHomePosts() async{
    //Future<void> refresh() async => print("object");
    String allHomePosts= ApiUtil.MAIN_API_URL+ApiUtil.ALL_HOME_POSTS;
    try {
    Map<String,String> headers={
     'Accept' :'application/json'
    };
   
    var response = await http.get(allHomePosts,headers: headers);
    List<Home> homePosts=[];
    if(response.statusCode==200){
     List<dynamic> body = jsonDecode(response.body);
     for(var item in body){
       Home homePost =Home.fromJson(item);
       homePosts.add(homePost);
     }
    }
    return homePosts;
      
    } catch (e) {
      print("$e error");
    }
    return homePosts;
 }
}
