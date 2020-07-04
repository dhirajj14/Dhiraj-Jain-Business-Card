import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("Dhiraj Jain"),
          backgroundColor: Colors.amberAccent,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
