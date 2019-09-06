import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Flutter 动画详解",
      home: new FirstPageAnim(title: "动画详解",),
    ));

class FirstPageAnim extends StatefulWidget {
  final String title;

  FirstPageAnim({Key key, @required this.title}) : super(key: key);

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<FirstPageAnim> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new AnimatedOpacity(
          opacity: _visible ? 1 : 0,
          duration: new Duration(milliseconds: 500),
          child: new Container(
            width: 300.0,
            height: 300.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          this.setState(() {
            _visible = !_visible;
          });
        },
        tooltip: "显示隐藏",
        child: new Icon(Icons.flip),
      ),
    );
  }
}
