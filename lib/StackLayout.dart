import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "",
      home: new StackLayout(),
    ));

class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stack stack = new Stack(//类似FrameLayout 层叠组件
      alignment: FractionalOffset(0.5, 0.5),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('image/a1.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: BoxDecoration(color: Colors.pink),
          child: new Text(
            "Hello 光头强",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stack Layout 示例展示"),
      ),
      body: new Center(
        child: new Center(
          child: stack,
        ),
      ),
    );
  }
}
