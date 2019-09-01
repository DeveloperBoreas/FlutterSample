import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Card局部示例展示",
      home: new CardLayout(),
    ));

class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 250.0,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text(
                "北京市海淀区",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.pink),
              ),
              subtitle: new Text('北京欢迎你。'),
              leading: new Icon(
                Icons.account_balance,
                color: Colors.green,
              ),
            ),
            new Divider()
          ],
        ),
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card局部示例展示"),
      ),
      body: new Center(child: card,)
    );
  }
}
