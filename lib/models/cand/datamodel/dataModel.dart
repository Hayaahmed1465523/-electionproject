// ignore: file_names
// ignore: file_names
/*
import 'package:http_parser/http_parser.dart'as http;

import 'dart:convert';

class candDataModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  candDataModel({this.userId, this.id, this.title, this.body});

  candDataModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}

 getCndidateData() async {

candDataModel data ;

    final  url = "https://jsonplaceholder.typicode.com/posts";
    final res = await http.get(url);//(Uri.parse(url));
    //if (res.statusCode==200){
    try {
      List object = jsonDecode(res.body) as List;
      setState(() {

        data = object as candDataModel;
        return data;
      });

    }catch(error){
      print("error in url ");
    }

    /*}else{
    throw Exception('error!');
  }*/
  }

*/
