import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class WidgetList extends StatelessWidget {
  WidgetList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Separated ListView'),
        ),
        body: ListView(children: <Widget>[
          ListTile(leading: Icon(Icons.account_circle), title: Text('Profile')),
          ListTile(leading: Icon(Icons.photo_library), title: Text('Gallery')),
          ListTile(leading: Icon(Icons.photo_camera), title: Text('Camera')),
          ListTile(leading: Icon(Icons.phone), title: Text('Calls')),
        ])
    );
  }
}

