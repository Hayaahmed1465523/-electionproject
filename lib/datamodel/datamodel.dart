import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CandDataModel
 {
  int? userId;
  int? id;
  String? title;

  CandDataModel({this.userId, this.id, this.title});

  CandDataModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}


class CandiBody extends StatelessWidget 
{


  @override
  Widget build(BuildContext context) {
    return Container(
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
                            const CircleAvatar(
                                  radius: 70.0,
                              backgroundImage: AssetImage('images/paplo.jpg'),
                            
                            ),
                            const SizedBox(
                          width: 40.0,
                          
                        ),
                            Expanded(
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start ,
                                children:
                                         [ 
                                         Text(
                                            "Name:/{candidate2.title} ",
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
                                            "Age:{candidate2.id} ",
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
                        Text('  CV:{candidate2.title} ',
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
                        IconButton(
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
                              
                              ),
                       ],
                        
                        
                        
                        ),
                  ),
                ),
              ),
            ),
         );

  }


}
