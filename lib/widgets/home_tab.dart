import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget{
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black87.withOpacity(0.3),
                          Colors.black38.withOpacity(0.3),
                          Colors.black26.withOpacity(0.3),
                        ],
                        stops: [
                          0.1,
                          0.2,
                          0.6,
                          0.9
                        ]),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_pin,
                        size: 60,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Humayun Kobir",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 2,),
                            Text("Humayun Kobir",
                              style: TextStyle(fontSize: 16,color: Colors.white),),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Job Type",
                          prefixIcon: Icon(Icons.title),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,width: 3
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,width: 3
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Organization type",
                          prefixIcon: Icon(Icons.branding_watermark),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,width: 3
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,width: 3
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: CupertinoColors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search jobs",
                              style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wrap_text,
                              color: CupertinoColors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Post a job",
                              style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


