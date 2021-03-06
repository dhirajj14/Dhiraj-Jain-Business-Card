import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                child: InkWell(
                  onTap: () => {_launchURL('tel://+13125369875')},
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    title: Text(
                      "+1 312 536 9875",
                      style: TextStyle(
                          fontFamily: 'SourceSan', color: Colors.black),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                child: InkWell(
                  onTap: () => {launch("mailto:dhirajj75@gmail.com")},
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    title: Text(
                      "dhirajj75@gmail.com",
                      style: TextStyle(
                          fontFamily: 'SourceSan', color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () => {launch("http://dhirajj14.github.io")},
                child: Text(
                  "http://dhirajj14.github.io",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontFamily: "SourceSans",
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
