import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  ListTile _listItem(String title, String subtitle) => ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(subtitle)
  );

  ListView _listView(String title) => ListView(
    children: <Widget>[

    ],
  );

  Widget _buildList() => ListView(
      children: [
        _listItem("Title 1", "Subtitle"),
        _listItem("Title 1", "Subtitle"),
        _listItem("Title 1", "Subtitle"),
        _listItem("Title 1", "Subtitle")
      ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      home: Scaffold(
          appBar: AppBar(
              title: Text("Reference App", textDirection: TextDirection.ltr)
          ),
          body: _buildList()
      ),
    );
  }
}
