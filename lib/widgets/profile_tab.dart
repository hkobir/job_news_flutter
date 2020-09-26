import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/widgets/update_resume.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  int number1 = 120;
  int number2 = 40;
  int number3 = 210;
  int number4 = 200;
  int number5 = 29;
  int number6 = 21;

  Color monthContainerColor = Colors.black;
  Color monthTextColor = Colors.white;

  Color allTimeContainerColor = Colors.white;
  Color allTimeTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: Container(),
        title: Text("Hot Jobs"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    //random number
                    number1 = Random().nextInt(300) + 1;
                    number2 = Random().nextInt(300) + 1;
                    number3 = Random().nextInt(300) + 1;
                    number4 = Random().nextInt(300) + 1;
                    number5 = Random().nextInt(300) + 1;
                    number6 = Random().nextInt(300) + 1;

                    allTimeContainerColor = Colors.white;
                    allTimeTextColor = Colors.black;

                    monthContainerColor = Colors.black;
                    monthTextColor = Colors.white;
                  });
                },
                child: Container(
                  height: 45,
                  width: 90,
                  child: Center(
                      child: Text(
                    "This Month",
                    style: TextStyle(
                        color: monthTextColor, fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                    color: monthContainerColor,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //random number
                    number1 = Random().nextInt(300) + 1;
                    number2 = Random().nextInt(300) + 1;
                    number3 = Random().nextInt(300) + 1;
                    number4 = Random().nextInt(300) + 1;
                    number5 = Random().nextInt(300) + 1;
                    number6 = Random().nextInt(300) + 1;

                    monthContainerColor = Colors.white;
                    monthTextColor = Colors.black;

                    allTimeContainerColor = Colors.black;
                    allTimeTextColor = Colors.white;
                  });
                },
                child: Container(
                  height: 45,
                  width: 90,
                  child: Center(
                      child: Text(
                    "All Time",
                    style: TextStyle(
                        color: allTimeTextColor, fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                    color: allTimeContainerColor,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.deepOrange.withOpacity(0.7),
                        Colors.deepOrange.withOpacity(0.7),
                        Colors.orangeAccent.withOpacity(0.5),
                        Colors.orangeAccent.withOpacity(0.5),
                      ],
                      stops: [
                        0.1,
                        0.2,
                        0.6,
                        0.9
                      ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$number1",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
                            "Employ followed",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white),
                          )),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              child: Icon(
                                Icons.event_note,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green.withOpacity(0.7),
                        Colors.green.withOpacity(0.7),
                        Colors.lightGreen.withOpacity(0.5),
                        Colors.lightGreen.withOpacity(0.5),
                      ],
                      stops: [
                        0.1,
                        0.2,
                        0.6,
                        0.9
                      ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$number2",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              "Employ applied",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              child: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.purple.withOpacity(0.7),
                        Colors.purple.withOpacity(0.7),
                        Colors.purpleAccent.withOpacity(0.5),
                        Colors.purpleAccent.withOpacity(0.5),
                      ],
                      stops: [
                        0.1,
                        0.2,
                        0.6,
                        0.9
                      ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$number3",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Added",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.event_note,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black54.withOpacity(0.7),
                        Colors.black54.withOpacity(0.7),
                        Colors.black38.withOpacity(0.5),
                        Colors.black38.withOpacity(0.5),
                      ],
                      stops: [
                        0.1,
                        0.2,
                        0.6,
                        0.9
                      ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$number4",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Message",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue.withOpacity(0.7),
                        Colors.blueAccent.withOpacity(0.7),
                        Colors.lightBlue.withOpacity(0.5),
                        Colors.lightBlue.withOpacity(0.5),
                      ],
                      stops: [
                        0.1,
                        0.2,
                        0.6,
                        0.9
                      ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$number5",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Job applied",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.event_note,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.red.withOpacity(0.7),
                        Colors.red.withOpacity(0.7),
                        Colors.redAccent.withOpacity(0.5),
                        Colors.redAccent.withOpacity(0.5),
                      ],
                      stops: [
                        0.1,
                        0.2,
                        0.6,
                        0.9
                      ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$number6",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Documents",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => UpdateResume()),
        backgroundColor: Colors.green,
        child: Icon(
          Icons.system_update_alt,
          color: Colors.white,
        ),
      ),
    );
  }
}
