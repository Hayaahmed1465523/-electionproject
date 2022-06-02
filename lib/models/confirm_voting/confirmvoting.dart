import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/models/vote_succ/vote_succ.dart';
import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';

class   Confirmation extends StatelessWidget {
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
                          child: 
                          Text(
                            'Are you sure you want to vote this candidate?',
                          style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                       color: Colors.purple.shade900,
                                              ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Stack( 
                          alignment: AlignmentDirectional.centerEnd,
                          //textDirection: ,
                          children: [
                          
                            Container(
                              height: 150,
                              width: 500,
                               decoration: BoxDecoration(
                        border: Border.all(
                        color: Colors.purple.shade900.withOpacity(0.2),
                        ),
                        
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.purple.shade900.withOpacity(0.4),
                        ),
                              child: Padding(
                                padding: const EdgeInsets.all(55.0),
                                child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                           [ 
                                            Text(
                                              "Shebl Shablol",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            
                                            style: TextStyle(
                                             fontSize: 25.0,
                                                         fontWeight: FontWeight.bold,
                                                         color: Colors.white,
                                            ),),
                                           
                                          ],
                                          
                                        ),
                              ),
                            ),
                              CircleAvatar(
                                  radius: 110.0,
                              backgroundImage: AssetImage('images/thoray.jpg'),
                            
                            ),
                                
                          ],
                        ),
                         SizedBox(
                          height: 20.0,
                        ),
                       
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: 
                                //cancel
                                defaultButton(
                                   
                                  function: (){
                                    Navigator.push(
                                 context, MaterialPageRoute(builder: (context)=> MessengerScreen(),
                                 ),
                                 );

                                  }, 
                                  text: 'Cancel', 
                                  background: Colors.deepPurple.shade200,)
                                
                             
                             
                             
                              ),
                             SizedBox(
                                 width:150,
                                  ),
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: 
                                //confirm
                                defaultButton(
                                   
                                  function: (){
                                    Navigator.push(
                                 context, MaterialPageRoute(builder: (context)=> VotedSuccessful(),
                                 ),
                                 );

                                  }, 
                                  text: 'Confirm', 
                                  background: Colors.deepPurple.shade200,)
                                
                             
                             
                             
                              ),
                              
                            ],
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
