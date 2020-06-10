import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  data = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/likes');
            },
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
              String title = "Новый заголовок";
              Navigator.pushNamed(context, '/verstka', arguments: title);
            },
            icon: Icon(Icons.satellite),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/speedCoding1');
            },
            icon: Icon(Icons.golf_course),
          ),
        ],
        title: Text('Home Page'),
      ),
      body: Center(
        child: GestureDetector(onTap: () {
          _getData();
        }, child: Text('Hello')),
      ),
    );
  }

  Future<http.Response> _getData() async {
    var urls = 'https://about.google/static/data/locations.json';
    try{
      print('ddd');
      return http.get(urls);
    }catch(error){
      debugPrint(error);
      return Future((){
        return null;
      });
    }
  }
}
