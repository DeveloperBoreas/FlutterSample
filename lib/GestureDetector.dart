import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "手势布局示例",
      home: new GestureDetectorLayout(),
    ));

class GestureDetectorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('手势布局示例'),
      ),
      body: new MyButton(),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text("按下"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(10)),
        child: new Text("手势处理"),
      ),
    );
  }
}
