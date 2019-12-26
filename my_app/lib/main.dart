import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MainPage extends StatefulWidget {
  final String title;
  MainPage({this.title}) : super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView Example"),
      ),
      body: new GridView.extent(maxCrossAxisExtent: 150, mainAxisSpacing: 5.0, children: _buildGridTitles(27)),
    );
  }
  
}

List<Widget> _buildGridTitles(numberOfTitles){
  List<Container> containers = new List<Container>.generate(numberOfTitles, (int index){
    final imageName = 'images/image${index+1}.png';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.cover,),
    );
  });
  return containers;
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new MainPage(title: "GridView of Images",)
    );
  }
}
