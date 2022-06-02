import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
   @required double height=50,
   
   @required double width=150,
   required Function function,
   required String text,
  required Color background, 
})=> Container(
                           
                                              
                           height: height,
                           width: width,
                           //color: background,
                           decoration:
                           BoxDecoration(
                           border: Border.all(
                           color: background,
                           
                             ),
                           borderRadius: BorderRadius.circular(70.0),
                           color: background, 
                           ),


                           
                           child: TextButton(
                             style: TextButton.styleFrom(
                             padding: const EdgeInsets.all(10.0),
                             primary: Colors.white,
                             textStyle: const TextStyle(
                               fontSize: 16,
                               ),
                               ), 
                             onPressed: (){
                               function();
                             },
                            child: Text(text,
                          )
                           ),
                         );

Widget defultFormField(
@required TextEditingController controller,
@required TextInputType type,
Function onSubmit,
Function onChanged,
@required Function validate,
@required String textlabel,
@required IconData prefix,

)=>TextFormField(           controller:controller,
                            keyboardType:type,

                            onFieldSubmitted: onSubmit(),
                            onChanged: onChanged(),
                            validator: validate(),
                            decoration: InputDecoration(
                            
                              fillColor: Colors.white, filled: true,
                            focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.purple.shade900, width: 5.0),
                                   ),
                                
                       constraints: const BoxConstraints.tightFor(
                      width: 400),
                          labelText:textlabel,
                          labelStyle: TextStyle(
                                    color: Colors.purple.shade900,
                    ),
                              
                              border: OutlineInputBorder(),
                              
                    
                              prefixIcon:
                              Icon(prefix, 
                              color: Colors.purple.shade900),
                              //suffixIcon:Icon(Icons.email) ,
                              
                            ),
                          );

// Widget checkBoxes(

// )=>IconButton(
//                     onPressed:(){
                                           
                                
//                               },
//                               icon: Checkbox(value: value, onChanged: onChanged),
//                               iconSize: 20,
//                               );              