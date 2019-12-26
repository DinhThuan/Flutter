import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.account_box, color: Colors.blue,size: 26,),
            title: new Text("Anton", style: new TextStyle(fontWeight: FontWeight.w400),),
            subtitle: new Text("Software developr"),
          ),
          new Divider(color: Colors.blue, indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.email,color: Colors.blue, size: 26,),
            title: new Text("dvthuan@gmail.com", style: new TextStyle(fontWeight: FontWeight.w400),),
            subtitle: new Text("Software developr"),
          ),
          new ListTile(
            leading: new Icon(Icons.phone,color: Colors.blue, size: 26,),
            title: new Text("+84-0988985008", style: new TextStyle(fontWeight: FontWeight.w400),),
            subtitle: new Text("Software developr"),
          )
        ],
      ),
    );
    final sizeBox =  new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 250.0,
        child: card,
      ),
    );
    final center = new Center(
      child: sizeBox,
    );
    // TODO: implement build
    return new MaterialApp(
        title: "",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Card example"),
          ),
          body: center,
        ));
  }
}
