import 'package:flutter/material.dart';
import 'package:flutter_demo/list/CardList.dart';
import 'package:flutter_demo/list/SeparatedList.dart';
import 'package:flutter_demo/list/WidgetList.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'list/BuilderList.dart';
import 'ui_widget/WidgetDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        initialRoute: '/',
      routes: {
          '/' : (context) => MyHomePage(),
         '/list_separated' : (context) => SeparatedList(),
        '/list_widget' : (context) => WidgetList(),
        '/list_builder' : (context) => BuilderList(),
        '/list_card' : (context) => CardList()
      },
    );
  }

}




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }



}

class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Container(child: RaisedButton(
          child: Text("Lists"),
          color: Colors.red,
            textColor: Colors.white,
            onPressed: () {
          navigateTo(context, "list_card");
        }))
    );
  }

  navigateTo(BuildContext context, String page) {
    switch (page) {
      case "list_separated":
        {
          Navigator.pushNamed(context, '/list_separated');
        }
        break;

      case "list_widget":
        {
          Navigator.pushNamed(context, '/list_widget');
        }
        break;

      case "list_builder":
        {
          Navigator.pushNamed(context, '/list_builder');
        }
        break;

      case "list_card":
        {
          Navigator.pushNamed(context, '/list_card');
        }
        break;
    }
  }
}

