import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("chat Page"),
      ),
      body: new Center(
        child: new Text("This is chat Page"),
      ),
    );
  }
}
