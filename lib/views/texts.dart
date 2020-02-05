import 'package:flutter/material.dart';

class Texts extends StatefulWidget {
  Texts({Key key}) : super(key: key);

  @override
  _TextsState createState() => _TextsState();
}

class _TextsState extends State<Texts> {

  bool _isChecked = false;

  bool _checkBoxTapped(bool isChecked) {
    setState(() {
      _isChecked = isChecked;
      print("The value of the checkbox presses has changed to ");
    });
    return _isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Texts",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input and selections'),
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          )
        ),
        body: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Checkbox'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    tristate: false,
                    onChanged: (isChecked) => _checkBoxTapped(isChecked),
                  ),
                  
                  Checkbox(
                    value: false,
                    tristate: false,
                    onChanged: (isChecked) => print("The value of the checkbox presses has changed to "),
                  ),

                  Checkbox(
                    value: null,
                    tristate: true,
                    onChanged: (isChecked) => print("The value of the checkbox presses has changed to "),
                  )
                ]
              ),

              // DatePicker
              Text('DatePicker'),
              RaisedButton(
                child: Text('Show Date Picker'),
                onPressed: () {
                  var future = showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900, 1, 1),
                    lastDate: DateTime(2050, 12, 31)
                  );
                  future.then((selectedDate) => print("The selected date is $selectedDate"));
                }
              ),

              Text('Radio buttons'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: false,
                    groupValue: "Radios",
                    onChanged: (result) => print("Radio pressed")
                  ),
                  Radio(
                    value: "Radios",
                    groupValue: "Radios",
                    onChanged: (result) => print("Radio pressed")
                  )
                ],
              ),

              Text('Slider'),
              Slider(
                max: 100,
                min: 0,
                value: 50,
                onChanged: null,
                onChangeEnd: (value) => print("Value selected: $value")
              ),

              Text('Switches'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Switch(
                    value: true,
                    onChanged: (value) => print("Switch value changed to $value")
                  ),
                  Switch(
                    value: false,
                    onChanged: (value) => print("Switch value changed to $value")
                  )
                ],
              ),

              Text('TextField'),
              Container(
                padding: EdgeInsets.only(left: 120, top: 0, right: 120, bottom: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "TextField"
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}