import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/business.dart';
import 'api_util.dart';
class BusinessPostApi{
  Future<List<Business>> get businessPosts => null;

 Future<List<Business>> fetchAllBusinessPosts() async{
    String allBusinessPosts= ApiUtil.MAIN_API_URL+ApiUtil.ALL_BUSINESS_POSTS;
    try {
       Map<String,String> headers={
     'Accept' :'application/json'
    };
    var response =await http.get(allBusinessPosts,headers: headers);
    List<Business> businessPosts=[];
    if(response.statusCode==200){
     List<dynamic> body = jsonDecode(response.body);
     for(var item in body){
       Business businessPost =Business.fromJson(item);
       businessPosts.add(businessPost);
     }
    }
    return businessPosts;  
    } catch (e) {
      print("$e error");
    }
    return businessPosts;
  }
}