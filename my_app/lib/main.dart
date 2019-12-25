import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:developer';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    "Programming tutorials channel 1",
                    style: new TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  "This channel contains tutorial videos in Flutter, React native, Reactjs",
                  style: new TextStyle(fontSize: 16.0, color: Colors.grey[850]),
                ),
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red,),
          new Text(
            "100",
            style: new TextStyle(fontSize: 16.0),
          )
          
        ],
      ),
    );
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('My Youtube channel'),
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset('images/samsungA20.png', fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}
