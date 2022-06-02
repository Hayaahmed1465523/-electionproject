import 'package:first_app/models/cand/candd.dart';
import 'package:first_app/models/confirm_voting/confirmvoting.dart';
import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/home_screen.dart';
import 'package:first_app/models/judge_confirm/judgecon.dart';
import 'package:first_app/models/login/login_screen.dart';
import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/vote_succ/vote_succ.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/finger_insert/fingerinsertion.dart';
import 'package:first_app/models/finger_recognize/finger_recognize.dart';
import 'package:first_app/models/voter_details/voter_details.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';

void main() {
  runApp(MyApp());
  



}

// two main widegts 

//( statless 
// stateful
// )
class MyApp extends StatelessWidget 
 {  
   @override
   Widget build (BuildContext context) //manger elsaf7a hena "bulid" 
    {
      return MaterialApp(
        debugShowCheckedModeBanner: false ,
      //  routes: {
        //  '/Voterdetails2 ': (context)=> VoterDetails2(),
        //},
        home:LoginScreen(),



      );

   }


}

