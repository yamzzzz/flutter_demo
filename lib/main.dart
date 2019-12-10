import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'ui_widget/WidgetDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<MyHomePage> {
  var genderSelectionGroup;
  var maleValue = 0;
  var femaleValue = 0;
  bool readingValue = false;
  bool singingValue = false;
  bool dancingValue = false;

  var notificationValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
          title: Text("WidgetDemo"),
        ),
        body: Column(children: <Widget>[
          TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Enter Name')),
          TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter DOB',
                  suffixIcon: IconButton(icon: Icon(Icons.calendar_today)))),
          TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter DOT',
                  suffixIcon: IconButton(icon: Icon(Icons.calendar_today)))),
          Text("GENDER"),
          Row(
            children: <Widget>[
              Radio(
                  value: 0,
                  groupValue: genderSelectionGroup,
                  onChanged: (value) {
                    genderSelected("M", value);
                  }),
              Text("Male"),
              Radio(
                  value: 1,
                  groupValue: genderSelectionGroup,
                  onChanged: (value) {
                    genderSelected("F", value);
                  }),
              Text("Female")
            ],
          ),
          Text("HOBBIES"),
          Row(
            children: <Widget>[
              Checkbox(
                  value: readingValue,
                  onChanged: (value) {
                    hobbySelected("reading", value);
                  }),
              Text("Reading"),
              Checkbox(
                  value: singingValue,
                  onChanged: (value) {
                    hobbySelected("singing", value);
                  }),
              Text("Singing"),
              Checkbox(
                  value: dancingValue,
                  onChanged: (value) {
                    hobbySelected("dancing", value);
                  }),
              Text("Dancing"),
            ],
          ),
          Row(children: <Widget>[
            Text("NOTIFICATIONS"),
            Switch(
                value: notificationValue,
                onChanged: (value) {
                  setState(() {
                    notificationValue = value;
                  });
                })
          ]),
          RaisedButton(onPressed: submitClicked(),
          child: Text("SUBMIT"),
          color: Colors.red,
          textColor: Colors.white,)
        ]));
  }

  genderSelected(selectedGender, value) {
    setState(() {
      genderSelectionGroup = value;
    });
  }

  void hobbySelected(s, value) {
    setState(() {
      switch (s) {
        case "reading":
          readingValue = value;
          break;
        case "singing":
          singingValue = value;
          break;
        case "dancing":
          dancingValue = value;
          break;
      }
    });
  }
}

submitClicked() {
  Fluttertoast.showToast(msg: "Submit Clicked!!",toastLength: Toast.LENGTH_SHORT);
}
