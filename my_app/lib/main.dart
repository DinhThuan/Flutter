import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar() {
    final snackBar = new SnackBar(
      content: new Text("This is a SnackBar"),
      duration: new Duration(seconds: 8),
      backgroundColor: Colors.green,
      action: new SnackBarAction(
        label: 'OK',
        onPressed: () {
          print("Press OK on SnackBar");
        },
      ),
    );
    // How to display Snackbar?
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "",
        home: new Scaffold(
          key: _scaffoldKey,
          appBar: new AppBar(
            title: new Text("An example SnackBar"),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.info),
                onPressed: _showSnackBar,
              )
            ],
          ),
        ));
  }
}
