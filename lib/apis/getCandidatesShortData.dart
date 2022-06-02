
import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart'as http ;

GetShortData() async {

  final  url = "https://jsonplaceholder.typicode.com/albums";
  final res = await http.get(Uri.parse(url));
  //if (res.statusCode==200){
  try {
    List object = jsonDecode(res.body) as List;


     return object;
      //return data;


  }catch(error){
    print("error in url ");
  }

  /*}else{
    throw Exception('error!');
  }*/
}