import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_app/models/voter_details/voter_details.dart';
class FingerRecognized extends StatelessWidget {
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


               TextButton(onPressed:(){  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> FingerPrint(),
        ),
        );}, child: Text(
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
                    child: Center(
                      child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start ,
                        
                        children: [
                          Text(
                            'Fingerprint Identification',
                          style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                                                 color: Colors.purple.shade900,
                                              ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            height: 190,
                            width: 190,
                            decoration:
                                  
                                  BoxDecoration(
                                  border: Border.all(
                                  color: Colors.deepPurple.shade100.withOpacity(0.0),
                       
                         ),
                                 borderRadius: BorderRadius.circular(30.0),
                                  //color: Colors.deepPurple.shade100.withOpacity(0.4),
                                  ),
                         
                         
                            child: 
                            IconButton(icon: Icon(Icons.check_box,
                              size:195
                              ,
                              color: Colors.purple.shade900),
                              onPressed: () {},
                              
                              ),
                          ),

                          SizedBox(
                            height: 50.0,
                            
                          ),
                          Center(
                            child: Row(
                             mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fingerprint is recognized',
                                style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                                    ),
                                ),
                                
                                TextButton(onPressed: (){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                   builder: (context)=> VoterDetails(),
                                ),
                                );
                                },
                                 child: Text('Continue',
                                 style: TextStyle(
                                  fontSize: 20.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.purple.shade900,
                                 )
                                 ),
                                 ),
                              ],
                            ),
                          ),
                          
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