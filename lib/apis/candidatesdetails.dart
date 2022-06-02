import 'package:http/http.dart'as http;
import 'dart:convert';

getdetailsData() async {

  final url = "https://jsonplaceholder.typicode.com/posts";
  final res = await http.get(Uri.parse(url));
  //if (res.statusCode==200){
  try {
    List object = jsonDecode(res.body) as List;
    return object ;
  }catch(error){
    print("error in url ");
  }

  /*}else{
    throw Exception('error!');
  }*/
}