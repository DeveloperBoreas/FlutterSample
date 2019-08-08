import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "GridListViewDemo",
      home: new GridListViewSimple(),
    ));

class GridListViewSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("网格列表"),
      ),
      body: new GridView.count(
        primary: true,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 100.0,
        children: <Widget>[
          const Text("第一行第一列"),
          const Text("第一行第二列"),
          const Text("第二行第一列"),
          new Text("第二行第二列"),
          new Text("第三行第一列"),
          new Text("第三行第二列"),

        ],
      ),
    );
  }
}
