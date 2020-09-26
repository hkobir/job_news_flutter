import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/screens/sign_up.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp())),
        backgroundColor: Colors.deepOrange,
        child: (Icon(
          Icons.arrow_forward,
          color: Colors.white,
        )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "User name or Mobile No.",
                  enabled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Forgot Password?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  )),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text("Sign in with social",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Icon(
                            Icons.face,
                            size: 35,
                            color: Colors.white,
                          ),
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Icon(
                            Icons.tag_faces,
                            size: 35,
                            color: Colors.white,
                          ),
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Icon(
                            Icons.perm_camera_mic,
                            size: 35,
                            color: Colors.white,
                          ),
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Don\'t have an account?",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    FlatButton(
                      child: Text("Create Account",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
