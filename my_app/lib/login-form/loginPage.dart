import 'package:flutter/material.dart';
import 'package:my_app/login-form/user.dart';

class LoginPageState extends State<LoginPage> {
  final User user = new User(); // mutable property for StatefuWidget
  List<int> listNumber = const [1, 2, 3];
  Map<String, String> gifts = const {
    'first': 'paper',
    'second': 'cotton',
    'third': 'leather'
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
          hintText: 'Enter your username',
          contentPadding: new EdgeInsets.all(10.0),
          border: InputBorder.none),
      keyboardType: TextInputType.text,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          this.user.userName = text;
        });
      },
    );
    final TextField _txtEmail = new TextField(
      decoration: new InputDecoration(
          hintText: 'your email address',
          contentPadding: new EdgeInsets.all(10.0),
          border: InputBorder.none),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          this.user.email = text;
        });
      },
    );
    final TextField _txtPassword = new TextField(
      decoration: new InputDecoration(
          hintText: 'Enter your password',
          contentPadding: new EdgeInsets.all(10.0),
          border: InputBorder.none),
      keyboardType: TextInputType.text,
      autocorrect: false,
      obscureText: true,
      onChanged: (text) {
        setState(() {
          this.user.password = text;
        });
      },
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login page example"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: new BoxDecoration(
                color: new Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(4.0))),
            child: _txtUserName,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: new BoxDecoration(
                color: new Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(4.0))),
            child: _txtEmail,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: new BoxDecoration(
                color: new Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(4.0))),
            child: _txtPassword,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: new Icon(Icons.home),
                  onPressed: () {
                    print(
                        'Username: ${user.userName}, email: ${user.email}, password: ${user.password}, ${listNumber}');
                    for (var i = 0; i < listNumber.length; i++) {
                      print(i);
                    }
                    print(gifts);
                  },
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }
}
