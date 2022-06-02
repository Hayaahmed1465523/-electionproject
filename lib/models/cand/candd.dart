import 'package:first_app/datamodel/candData.dart';
import 'package:first_app/models/confirm_voting/confirmvoting.dart';
import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';
import 'package:first_app/model/candidates/candidits_model.dart';

class CandidateScreen extends StatefulWidget {
  @override
  State<CandidateScreen> createState() => _CandidateScreenState();
}

class _CandidateScreenState extends State<CandidateScreen> {
    var x= null;
  bool value= false;

   List<CanModel>cand =
   [
     CanModel(
       name: 'Shebl',
        age: 2, 
        cv: 'cat',
        //pic: Image(image: AssetImage('images/shebl.jpg'),
       
       ),
     
    CanModel(
       name: 'Thoray',
        age: 3, 
        cv: 'cat',
      //    pic: Image(image: AssetImage('images/thoray.jpg'),
      //  ),
       ),
    CanModel(
       name: 'Paplo',
        age: 6, 
        cv: 'cat',
      //    pic: Image(image: AssetImage('images/paplo.jpg'),
      //  ),
    ),
    CanModel(
       name: 'Caren',
        age: 1, 
        cv: 'bird',
        // pic: Image(image: AssetImage('images/caren.jpg'),
        // ),
        ),
    CanModel(
       name: 'Maymona',
        age: 1, 
        cv: 'cat',
    // pic: Image(image: AssetImage('images/maymona.jpg'),
    //     ),
        ),
     

   ];
   
   @override 
   Widget build (BuildContext context)
   {
     return Scaffold(
       //backgroundColor: Colors.purple.shade900,
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
               }, 
               child: Text(
                 'Home',
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
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
           padding: const EdgeInsets.all(45.0),
//////////haktb
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start ,
               
              children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                 Row(
                  children: [
                    Container( /// text1 with the container and its pading
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.deepPurple.shade300,
    ),
                      borderRadius: BorderRadius.circular(20.0),
            ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Governorate:',
                        style: TextStyle( 
                          color: Colors.deepPurple.shade300,
                          
                        ),
                        ),
                      ),
                    ),
                    SizedBox(
                       width: 40.0,
                     ),
    
                  Container( /// text2 with the container and its pading
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.deepPurple.shade300,
    ),
                      borderRadius: BorderRadius.circular(20.0),
            ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Province list:',
                        style: TextStyle( 
                          color: Colors.deepPurple.shade300,
                          
                        ),
                        ),
                      ),
                    ),
                  
                   
                    SizedBox(
                       width: 40.0,
                     ),
                     Container( /// text3 with the container and its pading
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.deepPurple.shade300,
    ),
                      borderRadius: BorderRadius.circular(20.0),
            ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Department/Center:',
                        style: TextStyle( 
                          color: Colors.deepPurple.shade300,
                          
                        ),
                        ),
                      ),
                    ),
                  
                   
                    SizedBox(
                       width: 40.0,
                     ),
                     Container( /// text4 with the container and its pading
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.deepPurple.shade300,
    ),
                      borderRadius: BorderRadius.circular(20.0),
            ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Members:',
                        style: TextStyle( 
                          color: Colors.deepPurple.shade300,
                          
                        ),
                        ),
                      ),
                    ),
                   
                   
                  ],
                ),
              ),
              SizedBox(
                        height: 40.0,
                      ),
              Row(
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                           Container(
                             height: 200,
                                  width: 400,
                                  decoration:
                                  
                                  BoxDecoration(
                                  border: Border.all(
                                  color: Colors.deepPurple.shade300,
                       
                         ),
                                  borderRadius: BorderRadius.circular(70.0),
                                  color: Colors.deepPurple.shade200,)
                          ,
                             child: Row( //elbta3a elwa7da
                             //crossAxisAlignment: CrossAxisAlignment.start ,
                                children: [
                                  
                                  Padding(padding: EdgeInsets.all(10.0)),
                                  
                                  CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage: 
                                    NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.15752-9/277082692_448864086992542_6914284476206175344_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=ae9488&_nc_ohc=HQ7jKg2lFHsAX_i6jR0&_nc_ht=scontent.fcai21-4.fna&oh=03_AVIuyi44uB1e6Pbv6ciL71hSjARSvpZ47b0499tRMGlNEg&oe=62662BDB'),
                              
                              ),
                              
                                  SizedBox(
                                     width: 20.0,
                                   ),
                                  Expanded(
                                    child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start ,
                                      children:
                                       [ Padding(padding: EdgeInsets.all(10.0)),
                                        Expanded(
                                         child: 
                                         Text('Name: ',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          
                                          style: TextStyle(
                                           fontSize: 15.0,
                                                       fontWeight: FontWeight.bold,
                                                       color: Colors.purple.shade900,
                                          ),),
                                        ),
                                  
                                        SizedBox(
                                       height: 25.0,
                                     ),
                                       
                                       Expanded(
                                         child: Text('Age:',
                                         maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          
                                          style: TextStyle(
                                           fontSize: 15.0,
                                                       fontWeight: FontWeight.bold,
                                                       color: Colors.purple.shade900,
                                          ),),
                                       ),
                                  
                                         SizedBox(
                                       height: 25.0,
                                     ),
                                  
                                       Expanded(
                                         child: Text('CV: ',
                                         maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          
                                          style: TextStyle(
                                           fontSize: 15.0,
                                                       fontWeight: FontWeight.bold,
                                                       color: Colors.purple.shade900,
                                          ),),
                                       ), 
                                  
                                         SizedBox(
                                       height: 10.0,
                                     ),
                                         Row(
                              children: [
                                
                                       Checkbox(
                                         value: value,
                                        onChanged:(val){
                                          setState(() {
                                            value=val!;
                                          });
                                          print("ón");
                                          


                                        }),
                                          
                                         SizedBox(
                                       width: 140.0,
                                       //height: 20.0,
                                     ),  
                                          Padding(
                                          padding: const EdgeInsets.symmetric(vertical:7,horizontal: 15),
                                         
                              child: IconButton(
                              onPressed:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                 builder: (context)=> VoterDetails2(
                                   //x
                                   ),
                            ),
                              );
                              },
                              icon: Icon (Icons.announcement),
                              iconSize: 20,
                              ),
                                        ),   
                                        ],
                                      ),
                                      
                                      ],
                                      
                                    ),
                                  ),
                                  
                                ],
                              ),
                           ),
                         ],
                       ),
    










               
              SizedBox(
                        height: 10.0,
                      ),
              Center(
                child: 
                defaultButton(
                  background:Colors.deepPurple.shade200,
                  function: (){   
                                  Navigator.push(
                                 context, MaterialPageRoute(builder: (context)=> Confirmation(),
                                 ),
                                 );
                              
                             },
                   text: 'Confirm',
                   )
             
              )
              
               ],
             ),


           ),
           
         ),
       ),
        
     
     );


   }
}