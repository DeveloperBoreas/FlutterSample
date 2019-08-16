import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "RowSimple",
      home: new RowWidget(),
    ));

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget row = new Row(
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        new Icon(
          Icons.star,
          color: Colors.red[400],
        ),
        new Icon(
          Icons.star,
          color: Colors.green[400],
        ),
        new Icon(
          Icons.star,
          color: Colors.orange[400],
        ),
        new Icon(
          Icons.star,
          color: Colors.black38,
        ),
        new Icon(
          Icons.star,
          color: Colors.pink,
        ),
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("包装控件"),
      ),
      body: row,
    );
  }
}
