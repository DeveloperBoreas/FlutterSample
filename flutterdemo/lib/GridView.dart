import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "",
      home: new GridViewLayout(),
    ));

class GridViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count) {
      return new List<Container>.generate(
          count,
          (int index) => new Container(
                child: Image.asset("image/a${index}.jpg"),
              ));
    }

    Widget buildGrid() {
      return new GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTitleList(9),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView布局示例"),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}
