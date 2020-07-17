import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';
import 'package:http/http.dart' as http;

class BuilderList extends StatefulWidget {
  BuilderList({Key key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<BuilderList> {
  List<Post> items = [];

  void fetchPosts() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      List<Post> tempList =
      jsonResponse.map((post) => new Post.fromJson(post)).toList();
      print('tempList= ${tempList}');
      setState(() {
        items.addAll(tempList);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Separated ListView'),
      ),
      body: ListView.builder(
        itemCount: this.items.length,
        itemBuilder: (context, index) {
          return ListTile(leading: Icon(Icons.account_circle), title: Text(this.items.elementAt(index).title), subtitle: Text(this.items.elementAt(index).body));
        }
      ),
    );
  }

  @override
  void initState() {
    fetchPosts();
  }
}
