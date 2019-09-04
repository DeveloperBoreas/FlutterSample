import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "滑动删除示例",
      home: new DismissibleLayout(),
    ));

//滑动删除
class DismissibleLayout extends StatelessWidget {
  final List<String> items =
      new List<String>.generate(100, (index) => "列表项${index + 0}");

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('滑动删除示例'),
      ),
      body: new ListView.builder(
        itemBuilder: (context, index) {
          String item = items[index];
          return new Dismissible(
              key: new Key(item),
              onDismissed: (direction) {
                items.remove(item);
                Scaffold.of(context).showSnackBar(new SnackBar(
                    content: new Text('$direction  \t\t  $item 被删除了')));
              },
              child: new ListTile(
                title: new Text(item),
              ));
        },
        itemCount: 100,
      ),
    );
  }
}
