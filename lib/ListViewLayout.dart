import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "ListView 示例展示",
      home: new ListViewSimple(),
    ));

class ListViewSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      new ListTile(
        title: new Text("北京市丰台区",
            style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
        subtitle: new Text("北京市丰台区国际大厦8楼"),
        leading: new Icon(
          Icons.wifi,
          color: Colors.green,
        ),
      ),
      new ListTile(
        title: new Text("北京市海淀区",
            style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
        subtitle: new Text("北京市海淀区国际大厦8楼"),
        leading: new Icon(
          Icons.build,
          color: Colors.black,
        ),
      ),
      new ListTile(
        title: new Text("北京市朝阳区",
            style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
        subtitle: new Text("北京市朝阳区国际大厦8楼"),
        leading: new Icon(
           Icons.sentiment_very_satisfied,
          color: Colors.pinkAccent,
        ),
      ),
    ];
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListView 示例展示"),
      ),
      body: new Center(
        child: new ListView(children: list),
      ),
    );
  }
}
