import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/screens/gender_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SignUp extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 5,
                percent: 0.33,
                progressColor: Colors.green,
                linearStrokeCap: LinearStrokeCap.roundAll,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Create your demo account",
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.g_translate,
                  color: Colors.red,
                ),
                title: Text("Create With Google",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.fastfood,
                  color: Colors.blue,
                ),
                title: Text("Create With Facebook",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gender())),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Enter Your Information",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
