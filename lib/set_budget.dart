import 'package:flutter/material.dart';

var bud = "10000";

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final excont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 90, 20, 5),
              child: Text('Current Budget',
                  style: TextStyle(fontSize: 35, color: Colors.white)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(color: Color.fromRGBO(20, 33, 61, 1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 90),
              child: SizedBox(
                child: Text("$bud",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(252, 163, 17, 1))),
              ),
            ),
            Text('New Budget',
                style: TextStyle(fontSize: 35, color: Colors.white)),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 60),
              child: TextField(
                controller: excont,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter new budget',
                ),
              ),
            ),
            SizedBox(
              height: 90,
              width: 150,
              child: ElevatedButton(
                child: Text('Submit',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 163, 17, 1),
                    elevation: 10.0,
                    shadowColor: Colors.grey),
                onPressed: () => {
                  setState(() {
                    bud = excont.text;
                    excont.clear();
                  })
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
