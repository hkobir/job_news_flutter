import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/screens/complete_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PhoneNo extends StatefulWidget {
  @override
  _PhoneNoState createState() => _PhoneNoState();
}

class _PhoneNoState extends State<PhoneNo> {
  String dropDownValue = "Bangladesh (+880)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>CompleteSignUp()
            ));
          },
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 5,
                  percent: 1,
                  progressColor: Colors.green,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Select Your phone or email address(at least one)",
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
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
                items: <String>['Bangladesh (+880)', 'India (+080)', 'Dubai (+880)', 'Kuwet (+880)']
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
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Your phone No",
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.black
                    ),
                  )
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 130,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 1,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: "Email",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.black
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.black
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
