import 'package:flutter/material.dart';

class WidgetDemo extends StatefulWidget{

  WidgetDemo({Key key, title}) : super(key: key);

  @override
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<WidgetDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: <Widget>[
          Row(
          children: <Widget>[
            Text('Name: '),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Enter Here..'
              )
            )
          ],
        )
    ]
        ,
      ),
    );
  }
}