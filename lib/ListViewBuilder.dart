import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListViewBuilderDemo",
    home: new ListViewBuilderSimple(
        items: new List<String>.generate(10, (i) => "item $i")),
  ));
}

class ListViewBuilderSimple extends StatelessWidget {
  final List<String> items;
  final String title = "长列表展示";

  ListViewBuilderSimple({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index) {
        return new ListTile(title: new Text('${items[index]}'));
      }),
    );
  }
}
