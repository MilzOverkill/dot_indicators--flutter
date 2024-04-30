import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child: Container(
            color: Colors.pinkAccent[400],
          ), ),
         ),
    );
  }
}