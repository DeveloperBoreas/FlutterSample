import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ContainerDemo",
    home: new ContainerWidget(),
  ));
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Container(
        width: 300.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent[100],
          border: Border.all(
            color: const Color(0xffff0000),
            width: 20.0,
          ),
          borderRadius: const BorderRadius.all(const Radius.circular(40))
        ),
        child: new Image.asset("image/a1.jpg"),
      ),
    );
  }
}
