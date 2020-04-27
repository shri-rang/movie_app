import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart'as http;
import '../models/models.dart';




Future<List<Movies>> fetchData(keyword)async{

 print(keyword);

 var url = 'http://www.omdbapi.com/?i=tt3896198&apikey=8c6a0eb8&s=$keyword';


//  var data;
  final response =await http.get(url);
  if(response.statusCode==200){
    Map data = json.decode(response.body);
   
   


  print(data);
 
  // data = extractedData["Search"];
  
   if(data['Response']== "True"){
    var list= (data["Search"]as List).map((item)=> Movies.fromJson(item)
    ).toList();
    print(list);
   return list ; 

   } else {
      throw Exception(data['Error']);
    }
}  else {
    throw Exception('Something went wrong !');
  }
 




}