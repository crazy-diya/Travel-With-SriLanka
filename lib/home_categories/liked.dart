import 'package:flutter/material.dart';

class Liked extends StatefulWidget {
  @override
  _LikedState createState() => _LikedState();
}

class _LikedState extends State<Liked> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Liked"),),
    );
  }
}

/*

Widget liked(){
  return Center(child: Text("Liked"),);
}*/
