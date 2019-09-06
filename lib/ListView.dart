import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListViewDemo",
    home: new ListViewWidget(),
  ));
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = "ListViewDemo";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading:new Icon(Icons.access_alarm),
              title: new Text("Alerm"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("phone"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("time"),
            )
          ],
        ),
      ),
    );
  }
}
