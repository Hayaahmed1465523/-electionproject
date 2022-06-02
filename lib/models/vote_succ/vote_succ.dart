import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';



class VotedSuccessful extends StatelessWidget {
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
         

       ),
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image:AssetImage('images/roro.jpg'),
             fit: BoxFit.cover,           ),
         ),
         
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Center(
                child: SingleChildScrollView(
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
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 35),
                      child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center ,
                        
                        children: [

                          Text(
                            'Thank You!',
                          style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                                               color: Colors.purple.shade900,
                                              ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           SingleChildScrollView(
                             child: Expanded(
                               child: Text(
                                
                                 ' Your vote has submitted successfuly',
                               style: TextStyle(
                               fontSize: 40.0,
                               fontWeight: FontWeight.bold,
                                                    color: Colors.purple.shade900,
                                                   ),
                               ),
                             ),
                           ),
                          Image(
                            image: AssetImage('images/15.png'),
                            height: 260.0,
                            width: 600.0,
                          ),
                
                          SizedBox(
                            height: 30.0,
                          ),
                          
                          
                            Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                         mainAxisAlignment:MainAxisAlignment.end, 
                                  children: [
                                    defaultButton(
                                      background:Colors.purple.shade900,
                                      function: (){
                                         Navigator.push(
                                        context, MaterialPageRoute(builder: (context)=> FingerPrint(),
                                        ),
                                        );
                                    },
                                       text: 'Back to home',
                                                   
                                      
                                      
                                      ),
                                  ],
                                ),
                              ),
                            )
                
                        
                              
                          
                         ],
                          
                          
                          
                          ),
                    ),
                  ),
                ),
              ),
            ),
         ),
       

     );
   }
}