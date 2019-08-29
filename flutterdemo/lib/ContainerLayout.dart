import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Container布局容器",
      home: new ContainerLayout(),
    ));

class ContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = new Container(
      decoration: BoxDecoration(color: Colors.black12),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(width: 130,
                    height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.black38),
                    borderRadius: BorderRadius.all(new Radius.circular(8.0))),
                margin: EdgeInsets.all(4),
                child: new Image.asset("image/a1.jpg"),
              )),
              new Expanded(
                  child: new Container(width: 130,
                    height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.black38),
                    borderRadius: BorderRadius.all(new Radius.circular(8.0))),
                margin: EdgeInsets.all(4),
                child: new Image.asset("image/a1.jpg"),
              )),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                width: 130,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.black38),
                    borderRadius: BorderRadius.all(new Radius.circular(8.0))),
                margin: EdgeInsets.all(4),
                child: new Image.asset("image/a1.jpg"),
              )),
              new Expanded(
                  child: new Container(width: 130,
                    height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.black38),
                    borderRadius: BorderRadius.all(new Radius.circular(8.0))),
                margin: EdgeInsets.all(4),
                child: new Image.asset("image/a1.jpg"),
              )),
            ],
          )
        ],
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Container布局示例"),
      ),
      body: container,
    );
  }
}
