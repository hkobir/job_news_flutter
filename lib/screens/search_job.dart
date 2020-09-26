import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/screens/sign_in.dart';

class SearchJob extends StatefulWidget {
  @override
  _SearchJobState createState() => _SearchJobState();
}

class _SearchJobState extends State<SearchJob> {
  String dropDownValue = "Location";
  String dropDownValue2 = "Interested";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn())),
        backgroundColor: Colors.deepOrange,
        child: (Icon(
          Icons.arrow_forward,
          color: Colors.white,
        )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle),
              iconSize: 30,
              color: Colors.black,
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Search Job",
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Job Title",
                  labelStyle: TextStyle(color: Colors.black),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                value: dropDownValue,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                elevation: 16,
                onChanged: (value) {
                  setState(() {
                    dropDownValue = value;
                  });
                },
                items: <String>['Location', 'Comilla', 'Chittagong', 'Feni']
                    .map<DropdownMenuItem<String>>((values) {
                  return DropdownMenuItem<String>(
                    value: values,
                    child: Text(values),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                value: dropDownValue2,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                elevation: 16,
                onChanged: (value) {
                  setState(() {
                    dropDownValue2 = value;
                  });
                },
                items: <String>['Interested', 'Comilla', 'Chittagong', 'Feni']
                    .map<DropdownMenuItem<String>>((values) {
                  return DropdownMenuItem<String>(
                    value: values,
                    child: Text(values),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search,
                            color: CupertinoColors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Search",
                              style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.find_replace,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View New Jobs",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
