import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

int total = 4500;

class Add extends StatefulWidget {
  Add({this.app});
  final FirebaseApp app;
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final referenceDatabase = FirebaseDatabase.instance;
  final amountController = TextEditingController();
  final catController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final refernce = referenceDatabase.reference();
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 90, 20, 10),
                child: Text('Select Category',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  width: double.infinity,
                  height: 5,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(20, 33, 61, 1)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 60),
                child: TextField(
                  controller: catController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Category',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                child: Text('Enter Amount',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  width: double.infinity,
                  height: 5,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(20, 33, 61, 1)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 60),
                child: TextField(
                  controller: amountController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Expense Amount',
                  ),
                ),
              ),
              SizedBox(
                height: 90,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      refernce
                          .child(catController.text)
                          .push()
                          .child("Amount")
                          .set(amountController.text)
                          .asStream();
                      amountController.clear();
                      catController.clear();
                      total = total + int.parse(amountController.text);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(252, 163, 17, 1),
                        elevation: 10.0,
                        shadowColor: Colors.grey),
                    child: Text('Submit',
                        style: TextStyle(fontSize: 35, color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
