import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_app/models/login/login_screen.dart';
import 'package:first_app/models/finger_insert/fingerinsertion.dart';

class FingerPrint extends StatelessWidget {
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
                    crossAxisAlignment: CrossAxisAlignment.center ,
                      
                      children: [
                        SingleChildScrollView(
    child:Expanded(
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
                          height: 40.0,
                        ),
                        SingleChildScrollView(
                           
                           //ScrollDirection=Axis.vertical,
                          child: Center(
                            child: Text(
                              'Use your unique fingerprint to verify your identity that is the easiest way to improve voter engagement, save time, create a better voter experience and guarantee election integrity',
                              // maxLines: 3,
                              // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                             fontSize: 25.0,
                            
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                                              ),
                            
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                          
                        ),
                       
                       Expanded(

                         child: 
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20.0),
                           child: Row(
                             mainAxisAlignment:MainAxisAlignment.end,
                             children: [
                               defaultButton(
                                 background:Colors.purple.shade900,
                                 function: (){
                                        Navigator.push(
                                       context, MaterialPageRoute(builder: (context)=> FingerIdentification(),
                                       ),
                                       );
                                   }, 
                                 text: 'get startded',
                                 ),
                             ],
                           ),
                         ),
                      
                       )],
                    ),
                  ),
                ),
              ),
            ),
         ),
       
     );

   }
}