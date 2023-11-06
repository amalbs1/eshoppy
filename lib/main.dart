import 'dart:async';

import 'package:eshoppieamal/second.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Homescreen(),debugShowCheckedModeBanner: false,
    );
  }
}
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), 
    () => Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context) => Secondpage(),)));
  }
  Widget build(BuildContext context) {
    return  Expanded(child: Container(
      color: Colors.deepOrangeAccent,
      child: Image.asset("assets/images/logo.png"),
    ));
  }
}