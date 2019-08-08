import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "HorizontalListViewDemo",
    home: new HorizontalListViewWidget(),
  ));
}

class HorizontalListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("HorizontalListViewDemo"),
        ),
        body: new Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width: 160,
                color: Colors.lightBlue,
              ),
              new Container(
                width: 160,
                color: Colors.lightGreen,
              ),
              new Container(
                width: 160,
                color: Colors.deepPurpleAccent,
              ),
              new Container(
                width: 160,
                color: Colors.amber,
              ),
              new Container(
                width: 160,
                color: Colors.black,
              ),
              new Container(
                width: 160,
                color: Colors.black38,
              ),
              new Container(
                width: 160,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
