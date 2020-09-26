import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/screens/phone_no_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Color maleContainer = Colors.blue;
  Color femaleContainer = Colors.white;
  Color otherContainer = Colors.white;

  Color maleText = Colors.white;
  Color femaleText = Colors.black;
  Color otherText = Colors.black;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 5,
                percent: 0.66,
                progressColor: Colors.green,
                linearStrokeCap: LinearStrokeCap.roundAll,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Select Your gender",
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  maleContainer = Colors.blue;
                  maleText = Colors.white;

                  femaleContainer = Colors.white;
                  otherContainer = Colors.white;

                  femaleText = CupertinoColors.black;
                  otherText = CupertinoColors.black;
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: maleContainer,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.person,
                        color: maleText,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(color: maleText, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  femaleContainer = Colors.blue;
                  femaleText = Colors.white;

                  maleContainer = Colors.white;
                  otherContainer = Colors.white;

                  maleText = CupertinoColors.black;
                  otherText = CupertinoColors.black;
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: femaleContainer,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.perm_contact_calendar,
                        color: femaleText,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(color: femaleText, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  otherContainer = Colors.blue;
                  otherText = Colors.white;

                  maleContainer = Colors.white;
                  femaleContainer = Colors.white;

                  maleText = CupertinoColors.black;
                  femaleText = CupertinoColors.black;
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: otherContainer,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.details,
                        color: otherText,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Other",
                      style: TextStyle(color: otherText, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(
             builder: (context)=>PhoneNo()
           ));
          },
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
      )
      ,
    );
  }
}
