import 'package:flutter/material.dart';
import 'package:reference_app/views/buttons.dart';

class MyApp extends StatelessWidget{

  ListTile _listItem(String title, String subtitle, IconData icon, Function callback) => ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
        )
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon),
      onTap: callback,
  );

  Widget _buildList(BuildContext context) => ListView(
      children: [
        _listItem("Buttons", "Subtitle", Icons.crop_square, () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Buttons()))),
        _listItem("Text", "Subtitle", Icons.text_fields, () => print("something")),
        _listItem("Layouts", "Subtitle", Icons.border_all, () => print("something")),
      ]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              title: Text("Reference App", textDirection: TextDirection.ltr)
          ),
          body: _buildList(context)
    );
  }
}