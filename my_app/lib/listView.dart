import 'package:flutter/material.dart';

class ListViewwState extends State<ListVieww> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'This is my first Fluttter App',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("This is Header's title"),
        ),
        body: new Center(
          child: new Text("This is at the body's center"),
        ),
      ),
    );
  }
}

class ListVieww extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewwState();
  }
}
