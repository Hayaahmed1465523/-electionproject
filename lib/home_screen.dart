import 'package:first_app/apis/getCommitee.dart';
import 'package:first_app/datamodel/commityDataModel.dart';
import 'package:flutter/material.dart';
 
 class HomeScreen extends StatefulWidget {




  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var  commity ;

  CommityDataModel get commiteLoc => getCommityLoc();
   @override
  void initState() {
    getCommityLoc();
    super.initState();
  }
   @override
   Widget build (BuildContext context)
   {
     CommityDataModel commity = commiteLoc ;
  return Scaffold(
    appBar: AppBar(

      backgroundColor: Colors.red  ,
      leading: Icon(
        Icons.menu,
         ),
      title: Text(
           'First App',

        ),
      actions: [
        IconButton( onPressed:onNotif,
          icon: Icon(
          Icons.notification_important,),


        ),
        IconButton( onPressed:onNotif,
          icon: Icon(
          Icons.search,),


        ),



         ], // actions


    ),
    body:Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(50.0),
                bottomEnd: Radius.circular(20.0),
              ),

             ),
             clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image(
                  image:
                  NetworkImage(
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dahlia-1508785047.jpg?crop=1.00xw:0.669xh;0,0.0136xh&resize=480:*') ,
                  height: 300.0,
                  width: 300.0,
                  fit: BoxFit.fill,


                ),
                Container(
                  width:300.0 ,
                  color: Colors.black.withOpacity(0.5),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0,
                  ),
                  child: Text(
                              'flower',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                               fontSize: 20.0,
                               color: Colors.purple,
              ),
            ),
                ),
                 ],
            ),
          ),
        ),



      ],
    ),
  );
   }

void onNotif(){

   print('notifi is clicked');

 }
}
 