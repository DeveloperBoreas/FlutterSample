import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ImageDemo",
    home: new ImageWidget(),
  ));
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Image.asset(
        "image/a1.jpg",
        fit: BoxFit.fill,
        scale: 0.9,
        color: Colors.blue,

        colorBlendMode: BlendMode.color,
      ),
    );
//    return new Center(
//      child: new Image.network(
//        'http://img5.imgtn.bdimg.com/it/u=2994645718,880042333&fm=26&gp=0.jpg',
//        fit: BoxFit.contain,
//      ),
//    );
  }
}
