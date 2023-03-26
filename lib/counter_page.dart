import 'package:flutter/material.dart';
import 'count.dart';

class CounterPage extends StatefulWidget {
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  List<int> numList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Communication")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$numList"),
            Count(
              /*
               ? Notice how I'm declaring what these functions do in a 
               ? constructor call rather than in the object class, this
               ? makes the buttons generic, but more importantly allows 
               ? for access to variables beyond the scope of the class 
               ? like numList.
               */
              onCountChanged: (int val) { 
                setState(() => {
                  if (numList.isEmpty) {
                    numList.add(0)
                  } else if (val < 0) {
                    numList.insert(0, numList.first + val)
                  } else {
                    numList.add(numList.last + val)
                  }
                });
              },
              onCountPressed: () {
                setState(() {
                  numList.clear();
                });
              },
            ),
          ],
        ) 
      ),
    );
  }
}
