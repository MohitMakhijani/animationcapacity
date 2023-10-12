import 'dart:async';

import 'package:animationcapacity/main.dart';
import 'package:flutter/material.dart';
class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => _splashscreenState();

}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3),(){

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
            return const MyHomePage(title: "");
          },));
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: double.infinity,
      color: Colors.white,
      width: double.infinity,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

        Container(
          height: 250,
          width: 250,
          child: Image(image: AssetImage("assets/logoz.png"),fit: BoxFit.cover),
        )
      ]),
    );
  }
}

