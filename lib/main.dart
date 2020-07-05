import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/images/dhiraj.jpg"),
              ),
              Text(
                "Dhiraj Jain",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: "Pacifico"),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontFamily: "SourceSans",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
