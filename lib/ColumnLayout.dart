import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "",
      home: new ColumnLayout(),
    ));

class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Column 布局示例")),
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text("大家好"),
          new Text("我是测试Flutter的"),
          new Expanded(
              child: new FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          )),
        ],
      ),
    );
  }
}
