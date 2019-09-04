import 'package:flutter/material.dart';

class MyFloatingBar extends StatelessWidget {
  final String title;
  MyFloatingBar({Key key, @required this.title}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(title),
          floating: true,
          flexibleSpace: Placeholder(),
          expandedHeight: 200,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('Item #$index')),
            childCount: 50,
          ),
        ),
      ],
    ));
  }
}
