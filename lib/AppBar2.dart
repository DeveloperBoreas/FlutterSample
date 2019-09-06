import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "",
      home: new DDSimplerState(),
    ));

class DDSimplerState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _list.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("滴滴出行"),
          bottom: TabBar(
            tabs: _list.map((Choice choice) {
              return new Tab(
                text: choice.title,
                icon: new Icon(choice.icon),
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
          children: _list.map((Choice choice) {
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new ChoiceDidi(
                choice: choice,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ChoiceDidi extends StatelessWidget {
  final Choice choice;

  const ChoiceDidi({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
        color: Colors.white,
        child: new Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                choice.icon,
                size: 128.0,
                color: textStyle.color,
              ),
              Text(choice.title, style: textStyle)
            ],
          ),
        ));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> _list = <Choice>[
  Choice(title: "自驾", icon: Icons.directions_car),
  Choice(title: "自行车", icon: Icons.directions_bike),
  Choice(title: "公家", icon: Icons.directions_bus),
  Choice(title: "轮船", icon: Icons.directions_boat),
  Choice(title: "地铁", icon: Icons.directions_subway),
];
