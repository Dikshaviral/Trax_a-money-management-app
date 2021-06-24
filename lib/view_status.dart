import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:trax/set_budget.dart';
import 'add_expense.dart';

int d_bud = int.parse(bud);

class MyWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 100, 20, 50),
              child: Text('Expenditure',
                  style: TextStyle(fontSize: 65, color: Colors.white)),
            ),
            CircularPercentIndicator(
              radius: 300,
              percent: total / d_bud,
              backgroundColor: Color.fromRGBO(20, 33, 61, 1),
              progressColor: Colors.green,
              animation: true,
              center: Text("$total",
                  style: TextStyle(
                      fontSize: 50, color: Color.fromRGBO(252, 163, 17, 1))),
            ),
          ],
        ),
      ),
    );
  }
}
