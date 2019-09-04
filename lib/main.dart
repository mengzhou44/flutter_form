import 'package:flutter/material.dart';
import 'package:flutter_form/my-floating-bar.dart';
import 'my-form.dart';
import 'my-grid.dart';
import 'my-horizontal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/floating',
        routes: {
          '/': (context) => MyForm(title: 'Flutter Demo Home Page'),
          '/grid': (context) => MyGrid(),
          '/horizontal': (context) => MyHorizontal(title: 'Horizontal'),
          '/floating': (context) => MyFloatingBar(title: 'Floating'),
        });
  }
}
