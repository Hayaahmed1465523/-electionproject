import 'package:first_app/models/finger/finger.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:first_app/models/finger_recognize/finger_recognize.dart';
class FingerIdentification extends StatelessWidget {
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

              //  TextButton(onPressed:(){}, child: Text(
              //    'Candidates',
              //    style: TextStyle(
              //      fontSize: 15.0,
              //      fontWeight: FontWeight.bold,
              //      color: Colors.deepPurple.shade300,

              //    ),
                 
              //  ),),

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
                      crossAxisAlignment: CrossAxisAlignment.center ,
                        
                        children: [
                          SingleChildScrollView(
                            child: Expanded(
                              child: Text(
                                'Fingerprint Identification',
                              style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple.shade900,
                                                  ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70.0,
                          ),
                          Container(
                            height: 180,
                            width: 180,
                            decoration:
                                  
                                  BoxDecoration(
                                  border: Border.all(
                                  color: Colors.deepPurple.shade100.withOpacity(0.4),
                       
                         ),
                                 borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.deepPurple.shade100.withOpacity(0.4),),
                         
                         
                            child: 
                            IconButton(icon: Icon(Icons.fingerprint,
                              size:120,
                              color: Colors.purple.shade900),
                              onPressed: () {
                                Navigator.push(
                                 context,
                                MaterialPageRoute(
                                 builder: (context)=> FingerRecognized(),
                            ),
                              );
                              },
                              
                              ),
                          ),

                          SizedBox(
                            height: 70.0,
                            
                          ),
                          Center(
                            child: Text(
                              'Place your finger on sensor',
                            style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                         color: Colors.white,
                                                ),
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