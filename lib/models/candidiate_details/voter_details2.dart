
import 'package:first_app/apis/candidatesdetails.dart';
import 'package:first_app/apis/getCommitee.dart';

import 'package:first_app/datamodel/candData.dart';
import 'package:first_app/models/cand/datamodel/dataModel.dart';
import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class VoterDetails2 extends StatefulWidget {

 // VoterDetails2( int x , );

  @override
  State<VoterDetails2> createState() => _VoterDetails2State();
}

class _VoterDetails2State extends State<VoterDetails2> {
 //final CandDataModel candidate ;

var dataa ;
//final int id ;
//_VoterDetails2State(this.candidate, {
 //  required this.id ,
//});
 


  @override
  void initState() {
    super.initState();
    getdetailsData();
    getCommityLoc();
  }
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
         actions: [
           OutlineButton(
                shape: StadiumBorder(),
                textColor: Colors.deepPurple.shade700.withOpacity(0.5),
                child: Text('Login'),
              borderSide: BorderSide(
              style: BorderStyle.none, 
                       width: 1),
    onPressed: () {},
)
         ],

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
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                      
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                  radius: 70.0,
                              backgroundImage: AssetImage('images/paplo.jpg'),
                            
                            ),
                            SizedBox(
                          width: 40.0,
                          
                        ),
                            Expanded(
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start ,
                                children:
                                         [ 
                                          Text(
                                            "Name:{candidate.id}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          
                                          style: TextStyle(
                                           fontSize: 18.0,
                                                       fontWeight: FontWeight.bold,
                                                       color: Colors.white,
                                          ),),
                                          SizedBox(
                                            height: 40.0,
                                                  ),
                                          Text(
                                            "Age:{candidate.id} ",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          
                                          style: TextStyle(
                                           fontSize: 18.0,
                                                       fontWeight: FontWeight.bold,
                                                       color: Colors.white,
                                          ),),

                                         
                                        ],
                                        
                                      ),
                            ),
                                  
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text('  CV:{candidate.title} ',
                        //maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                                            
                        style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                                            ),
                        ),
                        SizedBox(
                        height: 290.0,
                        ),
                        /*IconButton(
                              icon: Icon(Icons.arrow_back,
                              size: 40,
                              color: Colors.white),
                              onPressed: () {
                                  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> MessengerScreen(),
        ),
        );
                              },
                              
                              ),*/
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