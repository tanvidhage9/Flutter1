import 'package:flutter/material.dart';

class explore extends StatefulWidget {
  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("explore Page"),
      ),
      body: new Center(
        child: new Text("This is explore Page"),
      ),
    );
  }
}
