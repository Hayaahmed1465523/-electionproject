// ignore_for_file: no_logic_in_create_state

import 'dart:convert';
import 'dart:async';
import 'dart:developer';
import 'dart:html';
import 'package:first_app/datamodel/candData.dart';
import 'package:first_app/datamodel/commityDataModel.dart';
import 'package:first_app/models/cand/candd.dart';
import 'package:http/http.dart' as http;
import 'package:first_app/models/confirm_voting/confirmvoting.dart';
import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/shared/shared_component/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';
import 'package:first_app/model/candidates/candidits_model.dart';

class MessengerScreen extends StatefulWidget {
  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  List<CommityDataModel> committees = [];
  List<CandDataModel> candidates = [];

  @override
  void initState() {
    super.initState();

    // getCommityLoc();
    getShortData();
  }

  @override
  Widget build(BuildContext context) {
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
              const CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('images/52.png'),
                backgroundColor: Colors.white,
              ),
              //  Text(
              //    'HOME',

              //  ),
              SizedBox(width: 30.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FingerPrint(),
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
                ),
              ),
            ],
          ),
        ),
      ),

      body: FutureBuilder<List<CommityDataModel>?>(
        future: getCommityLoc(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child:CircularProgressIndicator(),
            );
          } else {
            final committees = snapshot.data;
            if(committees !=null){
              log('list length came with : ${committees.length}');

              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/roro.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                /// text1 with the container and its pading
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
                                  child: Text(
                                    'Governorate:${committees.first.address?.city}',
                                    style: TextStyle(
                                      color: Colors.deepPurple.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 40.0),
                              Container(
                                /// text2 with the container and its pading
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
                                  child: Text(
                                    'Province list:${committees.first.address?.geo}',
                                    style: TextStyle(
                                      color: Colors.deepPurple.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 40.0),
                              Container(
                                /// text3 with the container and its pading
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
                                  child: Text(
                                    'Department/Center:${committees.first.address?.street}',
                                    style: TextStyle(
                                      color: Colors.deepPurple.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 40.0),
                              Container(
                                /// text4 with the container and its pading
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
                                  child: Text(
                                    'Members:${committees.first.id?.bitLength}',
                                    style: TextStyle(
                                      color: Colors.deepPurple.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 65.0),
                        Container(
                          width: 5000000,
                          height: 440.0,
                          child: ListView.separated(
                              separatorBuilder: (context, i) => SizedBox(
                                width: 20.0,
                              ),
                              itemCount: candidates.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final candiModel = candidates[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/Voterdetails',
                                        arguments: candidates[index]);
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        //crossAxisAlignment: CrossAxisAlignment.start ,
                                        children: [
                                          Container(
                                            height: 400,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.deepPurple.shade300,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(70.0),
                                              color: Colors.deepPurple.shade200,
                                            ),
                                            child: Column(
                                              //elbta3a elwa7da
                                              //crossAxisAlignment: CrossAxisAlignment.start ,
                                              children: [
                                                Padding(
                                                    padding:
                                                    EdgeInsets.all(10.0)),

                                                CircleAvatar(
                                                  radius: 70.0,
                                                  backgroundImage: AssetImage(
                                                      'images/caren.jpg'),
                                                ),

                                                // SizedBox(
                                                //    height: 10.0,
                                                //  ),
                                                Expanded(
                                                  child: Column(
                                                    //  crossAxisAlignment: CrossAxisAlignment.start ,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.all(
                                                              10.0)),
                                                      Expanded(
                                                        child: Text(
                                                          'Name: ${candiModel.title}',
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color: Colors
                                                                .purple.shade900,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'Age: ${candiModel.id}',
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color: Colors
                                                                .purple.shade900,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'CV: ${candiModel.title}',
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color: Colors
                                                                .purple.shade900,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets.all(
                                                            27.0),
                                                        child: Row(
                                                          //crossAxisAlignment: CrossAxisAlignment.start ,

                                                          children: [
                                                            Checkbox(
                                                                value: false,
                                                                onChanged: (val) {
                                                                  setState(() {
                                                                    //value=val!;
                                                                  });
                                                                  print("ón");
                                                                }),
                                                            SizedBox(
                                                              width: 140.0,
                                                              //height: 20.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                  15),
                                                              child: IconButton(
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder: (context) =>
                                                                          VoterDetails2(
                                                                            // index,
                                                                          ),
                                                                    ),
                                                                  );
                                                                },
                                                                icon: Icon(Icons
                                                                    .announcement),
                                                                iconSize: 20,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                        SizedBox(height: 10.0),
                        Center(
                            child: defaultButton(
                              background: Colors.deepPurple.shade200,
                              function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Confirmation(),
                                  ),
                                );
                              },
                              text: 'Confirm',
                            ))
                      ],
                    ),
                  ),
                ),
              );
            }else{
              return const Text('There is no data founded!');
            }

          }
        },
      ),
    );
  }

  Future<List<CommityDataModel>?> getCommityLoc() async {
    const url = "https://jsonplaceholder.typicode.com/users";

    try {
      final res = await http.get(Uri.parse(url));
      final responseList = jsonDecode(res.body) as List<dynamic>;
      List<CommityDataModel> committees = [];


      for (var item in responseList) {
        committees.add(CommityDataModel.fromJson(item));
      }

      log('commites list length: ' + committees.length.toString());
      return committees;
    } catch (error, stacktrace) {
      log('error: $error - stacktrace: $stacktrace');
    }
  }

  getShortData() async {
    const url = "https://jsonplaceholder.typicode.com/albums";

    try {
      final res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        final responseList = jsonDecode(res.body) as List<dynamic>;
        candidates.clear();

        for (var item in responseList) {
          candidates.add(CandDataModel.fromJson(item));
        }

        log('candidates list length: ' + candidates.length.toString());
      }
    } catch (error, stacktrace) {
      log('error: $error - stacktrace: $stacktrace');
    }
  }
}
