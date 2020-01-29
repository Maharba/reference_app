import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text("something"),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Raised Button'),
            onPressed: () => print("object")
          ),
        ),
      )
    );
  }
}
