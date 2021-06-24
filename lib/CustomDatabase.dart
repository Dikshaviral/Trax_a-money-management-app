import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 90,
              width: 150,
              child: ElevatedButton(
                child: Text('FOOD',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 163, 17, 1),
                    elevation: 10.0,
                    shadowColor: Colors.grey),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomData()),
                  ),
                },
              ),
            ),
            SizedBox(
              height: 90,
              width: 150,
              child: ElevatedButton(
                child: Text('TRAVEL',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 163, 17, 1),
                    elevation: 10.0,
                    shadowColor: Colors.grey),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomData2()),
                  ),
                },
              ),
            ),
            SizedBox(
              height: 90,
              width: 150,
              child: ElevatedButton(
                child: Text('UTILITIES',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 163, 17, 1),
                    elevation: 10.0,
                    shadowColor: Colors.grey),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomData3()),
                  ),
                },
              ),
            ),
            SizedBox(
              height: 90,
              width: 150,
              child: ElevatedButton(
                child: Text('MISCELLANEOUS',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 163, 17, 1),
                    elevation: 10.0,
                    shadowColor: Colors.grey),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomData4()),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomData extends StatefulWidget {
  CustomData({this.app});
  final FirebaseApp app;
  @override
  _CustomDataState createState() => _CustomDataState();
}

class _CustomDataState extends State<CustomData> {
  final referenceDatabase = FirebaseDatabase.instance;
  final amountController = TextEditingController();
  DatabaseReference _amountref;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    _amountref = database.reference().child('Food');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 800,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(65),
                child: Text('Food',
                    style: TextStyle(fontSize: 50, color: Colors.white)),
              ),
              Flexible(
                  child: new FirebaseAnimatedList(
                      query: _amountref,
                      itemBuilder: (BuildContext context, DataSnapshot snapshot,
                          Animation<double> animation, int index) {
                        return new Card(
                          color: Color.fromRGBO(20, 33, 61, 1),
                          child: ListTile(
                            leading: new Icon(Icons.attach_money,
                                color: Color.fromRGBO(252, 163, 17, 1)),
                            trailing: new IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => {
                                _amountref.child(snapshot.key).remove(),
                              },
                              color: Color.fromRGBO(252, 163, 17, 1),
                            ),
                            title: new Text(
                              snapshot.value['Amount'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomData2 extends StatefulWidget {
  CustomData2({this.app});
  final FirebaseApp app;
  @override
  _CustomData2State createState() => _CustomData2State();
}

class _CustomData2State extends State<CustomData2> {
  final referenceDatabase = FirebaseDatabase.instance;
  final amountController = TextEditingController();
  DatabaseReference _amountref;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    _amountref = database.reference().child('Travel');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 800,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(65),
                child: Text('Travel',
                    style: TextStyle(fontSize: 50, color: Colors.white)),
              ),
              Flexible(
                  child: new FirebaseAnimatedList(
                      query: _amountref,
                      itemBuilder: (BuildContext context, DataSnapshot snapshot,
                          Animation<double> animation, int index) {
                        return new Card(
                          color: Color.fromRGBO(20, 33, 61, 1),
                          child: ListTile(
                            leading: new Icon(Icons.attach_money,
                                color: Color.fromRGBO(252, 163, 17, 1)),
                            trailing: new IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => {
                                _amountref.child(snapshot.key).remove(),
                              },
                              color: Color.fromRGBO(252, 163, 17, 1),
                            ),
                            title: new Text(
                              snapshot.value['Amount'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomData3 extends StatefulWidget {
  CustomData3({this.app});
  final FirebaseApp app;
  @override
  _CustomData3State createState() => _CustomData3State();
}

class _CustomData3State extends State<CustomData3> {
  final referenceDatabase = FirebaseDatabase.instance;
  final amountController = TextEditingController();
  DatabaseReference _amountref;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    _amountref = database.reference().child('Utilities');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 800,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(65),
                child: Text('Utilities',
                    style: TextStyle(fontSize: 50, color: Colors.white)),
              ),
              Flexible(
                  child: new FirebaseAnimatedList(
                      query: _amountref,
                      itemBuilder: (BuildContext context, DataSnapshot snapshot,
                          Animation<double> animation, int index) {
                        return new Card(
                          color: Color.fromRGBO(20, 33, 61, 1),
                          child: ListTile(
                            leading: new Icon(Icons.attach_money,
                                color: Color.fromRGBO(252, 163, 17, 1)),
                            trailing: new IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => {
                                _amountref.child(snapshot.key).remove(),
                              },
                              color: Color.fromRGBO(252, 163, 17, 1),
                            ),
                            title: new Text(
                              snapshot.value['Amount'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomData4 extends StatefulWidget {
  CustomData4({this.app});
  final FirebaseApp app;
  @override
  _CustomData4State createState() => _CustomData4State();
}

class _CustomData4State extends State<CustomData4> {
  final referenceDatabase = FirebaseDatabase.instance;
  final amountController = TextEditingController();
  DatabaseReference _amountref;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    _amountref = database.reference().child('Miscellaneous');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 800,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(65),
                child: Text('Miscellaneous',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
              ),
              Flexible(
                  child: new FirebaseAnimatedList(
                      query: _amountref,
                      itemBuilder: (BuildContext context, DataSnapshot snapshot,
                          Animation<double> animation, int index) {
                        return new Card(
                          color: Color.fromRGBO(20, 33, 61, 1),
                          child: ListTile(
                            leading: new Icon(Icons.attach_money,
                                color: Color.fromRGBO(252, 163, 17, 1)),
                            trailing: new IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => {
                                _amountref.child(snapshot.key).remove(),
                              },
                              color: Color.fromRGBO(252, 163, 17, 1),
                            ),
                            title: new Text(
                              snapshot.value['Amount'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
