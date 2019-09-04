import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Center(child: Text('Item $index'));
        }),
      ),
    );
  }
}
