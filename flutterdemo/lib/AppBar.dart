import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "",
      home: new Text('''
          "This is a Simple Text"
          '''
          ),
    ));

class AppBarSimple extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DDSimplerState();
}

class DDSimplerState extends State<AppBarSimple>{
  Choice selectChoise = _list[0];
  final int aa = 11234567823;
  void _select(Choice choise) {
    setState(() {
      this.selectChoise = choise;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AppBar示例"),
        leading: new Icon(Icons.apps, color: Colors.green[400]),
        actions: <Widget>[
          new IconButton(icon: Icon(_list[0].icon), onPressed: () => _list[0]),
          new IconButton(icon: Icon(_list[1].icon), onPressed: () => _list[1]),
          new PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context){
              return _list.skip(2).map<PopupMenuItem<Choice>>((Choice choice){

              }).toList();
            },
          ),
        ],
      ),
    );
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
