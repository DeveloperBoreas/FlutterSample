import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "",
      home: new LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("水平布局示例"),
      ),
      body: new Row(
        children: <Widget>[
          new Expanded(
            child: const Text(
              "Flutter is veray beautifuy!",
              textAlign: TextAlign.center,
            ),
          ),
          new Expanded(
            child: const Text(
              "Flutter is veray beautifuy!",
              textAlign: TextAlign.center,
            ),
          ),
          new Expanded(
            child: const Text(
              "Flutter is veray beautifuy!",
              textAlign: TextAlign.center,
            ),
          ),
          new Expanded(
              child: new FittedBox(
            fit: BoxFit.contain,
            child: new FlutterLogo(),
          )),
        ],
      ),
    );
  }
}
