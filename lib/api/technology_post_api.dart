import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/technology.dart';
import 'api_util.dart';
class TechnologyPostApi{
  Future<List<Technology>> get technologyPosts => null;

 Future<List<Technology>> fetchAllTechnologyPosts() async{
    String allTechnologyPosts= ApiUtil.MAIN_API_URL+ApiUtil.ALL_TECHNOLOGY_POSTS;
   try {
      Map<String,String> headers={
     'Accept' :'application/json'
    };
    var response =await http.get(allTechnologyPosts,headers: headers);
    List<Technology> technologyPosts=[];
    if(response.statusCode==200){
     List<dynamic> body = jsonDecode(response.body);
     for(var item in body){
       Technology technologyPost =Technology.fromJson(item);
       technologyPosts.add(technologyPost);
     }
    }
     return technologyPosts;
   } catch (e) {
     print("$e error");
   }
    return technologyPosts;
  }
}
