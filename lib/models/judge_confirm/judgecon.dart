import 'package:first_app/model/candidates/candidits_model.dart';
import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/vote_succ/vote_succ.dart';
import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_app/models/login/login_screen.dart';
import 'package:first_app/models/finger_insert/fingerinsertion.dart';

class JudgeConfirm extends StatelessWidget {
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
    onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> LoginScreen(),
        ),
        );

    },
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
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 70),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                      
                      children: [
                        Text(
                          'All the Candidates here have their data verified by the judge',
                        style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                       color: Colors.purple.shade900,
                                            ),
                        ),
                        SizedBox(
                          height: 65.0,
                        ),
                         Container(
                           width: double.infinity,
                           height: 130.0,
                           child: ListView.separated(
                            scrollDirection: Axis.horizontal, 
        itemBuilder: (context,index)=> buildconfirm(), separatorBuilder:(context,index)=> SizedBox(width: 20.0,),
         itemCount: 20),
                         ),
                         
                         
                  
                         SizedBox(
                          height: 50.0,
                          
                        ),
                       
                       Expanded(
                          
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
                                  text: 'Edit', 
                                  background: Colors.purple.shade900,)
                                
                             
                             
                             
                              ),
                             SizedBox(
                                 width:200,
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
                                  text: 'Save', 
                                  background: Colors.purple.shade900,)
                                
                             
                             
                             
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


Widget buildconfirm()=>
Row(
                           crossAxisAlignment: CrossAxisAlignment.start ,
                           children: [
                                 Container(
                                   height: 110,
                                        width: 270,
                                        decoration:
                                        
                                        BoxDecoration(
                                        border: Border.all(
                                        color: Colors.deepPurple.shade300,
                                                    
                           ),
                                        borderRadius: BorderRadius.circular(70.0),
                                        color: Colors.deepPurple.shade200,)
                                ,
                                   child:
                                    Row( //elbta3a elwa7da
                                   //crossAxisAlignment: CrossAxisAlignment.start ,
                                      children: [
                                        
                                        Padding(padding: EdgeInsets.all(10.0)),
                                        
                                        CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: 
                                          NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.15752-9/277082692_448864086992542_6914284476206175344_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=ae9488&_nc_ohc=HQ7jKg2lFHsAX_i6jR0&_nc_ht=scontent.fcai21-4.fna&oh=03_AVIuyi44uB1e6Pbv6ciL71hSjARSvpZ47b0499tRMGlNEg&oe=62662BDB'),
                                    
                                    ),
                                    
                                        SizedBox(
                                           width: 15.0,
                                         ),
                                        //Padding(padding: EdgeInsets.all(10.0)),
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
                                        
                                      ],
                                    ),
                                 ),
                           ],
                                                    );
                               