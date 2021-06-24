import 'package:flutter/material.dart';
import 'package:trax/CustomDatabase.dart';
import 'package:trax/set_budget.dart';
import 'package:trax/view_status.dart';

import 'add_expense.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 150,
                width: 150,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyWidget()),
                    ),
                  },
                  child: Icon(
                    Icons.attach_money,
                    color: Colors.green,
                    size: 60.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(20, 33, 61, 1)),
                ),
              ),
              Text(
                'Set A Budget',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'View Report',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyWidget2()),
                    ),
                  },
                  child: Icon(
                    Icons.view_list,
                    color: Colors.black,
                    size: 60.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(252, 163, 17, 1)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 150,
                width: 150,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Add()),
                    ),
                  },
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.green,
                    size: 60.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(20, 33, 61, 1)),
                ),
              ),
              Text(
                'Add Expense',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'View History',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    ),
                  },
                  child: Icon(
                    Icons.account_box,
                    color: Colors.black,
                    size: 60.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(252, 163, 17, 1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
