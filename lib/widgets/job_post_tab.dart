import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/models/job_post.dart';
import 'package:flutter_ui_prack/data_resources/data.dart';

class JobPost extends StatefulWidget {
  @override
  _JobPostState createState() => _JobPostState();
}

class _JobPostState extends State<JobPost> {
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 10),
              child: Text("Founded new job",style: TextStyle(color: Colors.red,fontSize: 14),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 8),
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Column(
              children: jobPostList.map((model) => buildPost(model)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPost(Job value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Card(
        elevation: 3,
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.post,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            value.requirement,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.account_balance,
                  size: 20,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
