import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "层叠定位布局示例",
      home: new PositionedLayout(),
    ));

class PositionedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('层叠定位布局示例'),
      ),
      body: new Stack(
        children: <Widget>[
          new Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567571161803&di=8c7fafe32b41ad26f04fbaa87d0d56b0&imgtype=0&src=http%3A%2F%2Fpic1.nipic.com%2F2008-12-05%2F200812584425541_2.jpg"),
          new Positioned(
              left: 50,
              top: 50,
              child: new Text(
                "定位布局",
                style: new TextStyle(
                    fontSize: 20, color: Colors.green, fontFamily: 'serif'),
              )),
        ],
      ),
    );
  }
}
