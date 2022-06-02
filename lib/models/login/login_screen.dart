import 'package:first_app/datamodel/login_model.dart';
import 'package:first_app/models/finger/finger.dart';
import 'package:first_app/models/candidiates/messanger_screen.dart';
import 'package:first_app/models/candidiate_details/voter_details2.dart';
import 'package:first_app/models/login/test1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var PasswordController = TextEditingController();

  var formkey = GlobalKey<FormState>();
  late loginRequestModel requestModel;
  bool isPassword = true;
  @override
  void initState() {
    requestModel = new loginRequestModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 20.0,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('images/52.png'),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 30.0,
              ),
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
        actions: [
          OutlineButton(
            shape: StadiumBorder(),
            textColor: Colors.deepPurple.shade700.withOpacity(0.5),
            child: Text('Login'),
            borderSide: BorderSide(style: BorderStyle.none, width: 1),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/roro.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                height: 600,
                width: 700,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple.shade100.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.deepPurple.shade100.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 100),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          //image.asset(),
                          child:
                              //Image.asset("C:\Users\User\Desktop\roro.png"),
                              Text(
                            'Judge',
                            style: TextStyle(
                              //decoration: TextDecoration.underline,
                              //fontFamily:"Roboto" ,
                              color: Colors.purple.shade900,

                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                          //width: 10.0,
                        ),
                        Center(
                          child: TextFormField(
                            //Username
                            controller:
                                emailController, //beykhleny akhod elvalues ely feha
                            keyboardType: TextInputType.emailAddress,

                            onSaved: (value) => requestModel.email = value,
                            onFieldSubmitted: (Value) {
                              print(Value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'email adress must not be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              focusedBorder: OutlineInputBorder(
                                  //  borderSide: BorderSide(color: Colors.purple.shade900, width: 5.0),
                                  ),

                              constraints:
                                  const BoxConstraints.tightFor(width: 400),
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                color: Colors.purple.shade900,
                              ),

                              border: OutlineInputBorder(),

                              prefixIcon: Icon(Icons.account_circle,
                                  color: Colors.purple.shade900),
                              //suffixIcon:Icon(Icons.email) ,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          //width: 50.0,
                        ),
                        Center(
                          child: TextFormField(
                            //Password
                            controller: PasswordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: isPassword,
                            onSaved: (value) => requestModel.password = value,
                            onFieldSubmitted: (Value) {
                              print(Value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password adress must not be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  //  borderSide: BorderSide(color: Colors.purple.shade900, width: 5.0),
                                  ),
                              constraints:
                                  const BoxConstraints.tightFor(width: 400),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.purple.shade900,
                                //fontWeight: FontWeight.bold,
                              ),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.purple.shade900,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPassword = !isPassword;
                                      //badeha 3aksha
                                    });
                                  },
                                  icon: Icon(
                                    isPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.purple.shade900,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add You Fingerprint',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.fingerprint,
                                    size: 75, color: Colors.white),
                                onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>MessengerScreen()),
                                  );

                                  }
                                },
                              ),

                              // TextButton(

                              //   onPressed: (){

                              //   },
                              // child: Text(
                              //   'register now',
                              //    style: TextStyle(
                              //    fontWeight: FontWeight.bold,
                              // ),
                              // ),
                              // ),
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
      ),
    );
  }
}
