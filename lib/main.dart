import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Profile(),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/dad1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(40),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/dad.jpg'), fit: BoxFit.contain),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Colors.green[300]],
                  ),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Text(
                  " Renewable | Solar | Wind | Consultant",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.green[50], Colors.red[300]],
                  ),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  InkWell(
                    child: Image.asset(
                      "assets/linkedin-square-color.png",
                      height: 40,
                      width: 40,
                    ),
                    onTap: () => launch(
                        'https://www.linkedin.com/in/arun-kumar-b-s-24563439/'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                      child: Image.asset(
                        "assets/medium.png",
                        height: 40,
                        width: 40,
                      ),
                      onTap: () => launch('https://medium.com/@haripranav98')),
                  SizedBox(
                    width: 8,
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}



