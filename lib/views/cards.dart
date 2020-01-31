import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cards",
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.pop(context)),
          title: Text('Cards'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25),
              child: Card(
                elevation: 1,
                child: Container(
                  height: 100,
                  child: Center(
                    child: Text('This is a text'),
                  ),
                )
              )
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 100,
                  child: Center(
                    child: Text('This is a text'),
                  ),
                )
              )
            )
          ],
        )
      )
    );
  }
}