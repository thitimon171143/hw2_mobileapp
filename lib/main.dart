import 'package:flutter/material.dart';
import 'register.dart';
import 'dart:ui';

void main() {
  var app = runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomeApp(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Register",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.10),
          child: Column(
            children: [
              Image.asset(
                "assets/images/person.jpg",
                height: 200,
              ),
              Container(
                padding: const EdgeInsets.all(20.30),
              ),
              Register("assets/images/img1", "Username", Colors.grey),
              Container(
                padding: const EdgeInsets.all(5.30),
              ),
              Register("assets/images/img1", "Email", Colors.grey),
              Container(
                padding: const EdgeInsets.all(20.30),
                child: TextButton(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pinkAccent,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
  }
}