import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'dart:html';
import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart'as http;
import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';
class VoterDetails extends StatelessWidget {
 
  
  
   @override 
   Widget build (BuildContext context)
   {
     return Scaffold(
       extendBodyBehindAppBar: true,
       appBar: AppBar(

         backgroundColor: Colors.transparent,
         elevation: 0.0,
         titleSpacing: 20.0,
         title: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(
             children: [
              // ignore: prefer_const_constructors
              CircleAvatar(
                 radius: 25.0,
                  backgroundImage:  AssetImage('images/52.png'),
                 backgroundColor: Colors.white,
               ),
              
              //  Text(
              //    'HOME',
                 
              //  ),



              SizedBox(
                width: 30.0,
              ),


               TextButton(onPressed:(){
                   Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> FingerPrint(),
        ),
        );
               }, child: Text(
                 'Home',
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(
                   fontSize: 15.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.deepPurple.shade300,

                 ),
                 
               ),), 

               SizedBox(
                width: 10.0,
              ),

               TextButton(onPressed:(){
                   Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> MessengerScreen(),
        ),
        );
               }, child: Text(
                 'Candidates',
                 style: TextStyle(
                   fontSize: 15.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.deepPurple.shade300,

                 ),
                 
               ),),

             ],
           ),
         ),
         

       
     /*   flexibleSpace: Container(
          decoration:const  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/5.jpg'),
                  fit: BoxFit.fill
              )
          ),
        ),*/
       ),
      
      
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('images/roro.jpg'),
             fit: BoxFit.cover,           ),
         ),
         
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Center(
                child: Container(
                  height: 600,
                   width: 1000,
                        decoration: BoxDecoration(
                        border: Border.all(
                        color: Colors.deepPurple.shade100.withOpacity(0.2),
                        ),
                        
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.deepPurple.shade100.withOpacity(0.2),
                        ),
                
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 70),
                    child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start ,
                      
                      children: [
                        Center(
                          child: Text(
                            'Voter Details',
                          style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                       color: Colors.white,
                                              ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        
                            CircleAvatar(
                                  radius: 100.0,
                              backgroundImage:AssetImage('images/maymona.jpg') ,
                            
                            ),
                            SizedBox( 
                          width: 40.0,
                          
                        ),
                            Expanded(
                              child: Container(
                                height: 150,
                                width: 600,
                                child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start ,
                                  children:
                                           [ 
                                            Expanded(
                                              child: Text(
                                                "Name: Shebl dmkcljdmck ldnvjkdnvjkfnvjkfdnvjfdnvjkdfnvjkndfvjnfvkjnfvkjnfdjvndfkjvndfkjvndfkjvnjdfnvj",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              
                                              style: TextStyle(
                                               fontSize: 25.0,
                                                           fontWeight: FontWeight.bold,
                                                           color: Colors.white,
                                              ),),
                                            ),
                                            SizedBox(
                                              height: 70.0,
                                                    ),
                                            Expanded(
                                              child: Text(
                                                "SSN: 1594873251850",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              
                                              style: TextStyle(
                                               fontSize: 25.0,
                                                           fontWeight: FontWeight.bold,
                                                           color: Colors.white,
                                              ),),
                                            ),
                                      
                                           
                                          ],
                                          
                                        ),
                              ),
                            ),
                                  
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'You can vote ',
                               style: TextStyle(
                               fontSize:30.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                               ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              child: IconButton(
                              icon: Icon(Icons.check_circle,
                              size: 70,
                              color: Colors.white),
                              onPressed: () {
                                Null;
                              },
                              
                              ),
                            ),
                            



                            
                          ],
          
                        ),
                      ),
                        SizedBox(
                          height: 20.0,
                        ),
                        
              
                        Expanded(
                          
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20.0),
                             child: 
                             Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                               children: [
                                 defaultButton(
                                   background:Colors.purple.shade900,
                                   function: (){
                                      Navigator.push(
                                     context, MaterialPageRoute(builder: (context)=> MessengerScreen(),
                                     ),
                                     );
                                 },
                                    text: 'Continue',
                   
                                   
                                   
                                   ),
                               ],
                             )

                           ),
              )
              
                        
                       ],
                        
                        
                        
                        ),
                  ),
                ),
              ),
            ),
         ),
       

     );
   }
}