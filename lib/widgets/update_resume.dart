import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateResume extends StatefulWidget {
  @override
  _UpdateResumeState createState() => _UpdateResumeState();
}

class _UpdateResumeState extends State<UpdateResume> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.clear,
                size: 30,
                color: Colors.grey,
              )),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 5, left: 25, right: 25, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Manage Resume",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: CupertinoColors.systemGrey2, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Edit Resume",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: CupertinoColors.systemGrey2, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.streetview,
                        color: Colors.grey,
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "View Resume",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: CupertinoColors.systemGrey2, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cloud_upload,
                        color: Colors.grey,
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Upload Resume",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
