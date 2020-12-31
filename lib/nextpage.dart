import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  String name;

  Nextpage(this.name);

  @override
  _NextpageState createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white54,
          iconTheme: IconThemeData(
            size: 20,
            color: Colors.black
          ),
        ),
        body: Container(
            color: Colors.white54,
            child: Center(child: Text(widget.name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),))));
  }
}
