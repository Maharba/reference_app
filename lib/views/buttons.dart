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
        body: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Raised Button'),
                onPressed: () => print("You have pressed the RaisedButton.")
              ),
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text("Option 1")
                  ),
                  DropdownMenuItem(
                    child: Text("Option 2")
                  ),
                ],
                onChanged: (param) => print("Since this is a Stateless Widget, it cannot change the state of the current view." + 
                "Make this a Statefull Widget in order to modify the UI.")
              )
            ],
          )
        )
      )
    );
  }
}
