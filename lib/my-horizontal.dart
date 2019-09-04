import 'package:flutter/material.dart';

class MyHorizontal extends StatelessWidget {
  final String title; 
  MyHorizontal({Key key, @required this.title}): super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.red,
              ),
            ],
          )),
    );
  }
}
