import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  MyForm({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Builder(builder: (context) {
        return Padding(
            padding: EdgeInsets.all(10),
            child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('User'),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'User is required!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40),
                      Text('Password'),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is required!';
                          }
                          return null;
                        },
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: RaisedButton(
                            child: Text('Submit'),
                            onPressed: () {
                              if (formKey.currentState.validate()) {
                                Scaffold.of(context).showSnackBar(
                                    SnackBar(content: Text('Processing Data')));
                              }
                            },
                          ))
                    ])));
      }),
    );
  }
}
