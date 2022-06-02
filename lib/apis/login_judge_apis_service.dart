
import 'package:first_app/datamodel/login_model.dart';
import 'package:http/http.dart'as http ;
import 'dart:convert';


class Apis {
  Future<LoginResponseModel>login(loginRequestModel requestModel)  async {
    String url = "https://reqres.in/api/login";
    /*if(email.isNotEmpty&&password.isNotEmpty) {
      var response = await http.post(Uri.parse(url),
          body:({'email':email.text ,'password':password.text}));
    }*/
    final response = await http.post(Uri.parse(url),body: requestModel.toJson());
    if (response.statusCode==200|| response.statusCode==400){

      return LoginResponseModel.fromjson(json.decode(response.body));
    }else{
      throw Exception(' Failed to load data');

    }

  }
}