import 'dart:convert';
import 'dart:async';
import 'dart:developer';

import 'package:http/http.dart'as http ;

getCommityLoc() async {

  const  url = "https://jsonplaceholder.typicode.com/users";

  try {
    final res = await http.get(Uri.parse(url));

    // List commiteLoc = jsonDecode(res.body) as List;
    //
    // return commiteLoc;

    log(res.body.toString());



  }catch(error , stacktrace){
    log('error: $error - stacktrace: $stacktrace');
  }


}