import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  /*
   ? This space isn't just for declaring variables, since functions are also
   ? first class objects in dart, you can declare them as class level variables
   ? without defining behavior, in fact, this class doesn't care what these 
   ? functions do, just what they're called and what their parameters are.
   */
  final Function(int) onCountChanged;
  final VoidCallback onCountPressed;

  Count({
    required this.onCountChanged, // parameters in dart constructors are optional, these should be required though.
    required this.onCountPressed
  });

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            onCountChanged(1);
          },
        ),
        IconButton(
          icon: Icon(Icons.circle_outlined),
          onPressed: () {  // notice how I'm just calling the function here
            onCountPressed();
          },
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            onCountChanged(-1);
          },
        ),
      ],
    );
  }
}
