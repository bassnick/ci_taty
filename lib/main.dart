import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CI taty',
      home: MyHomePage(title: 'CI taty'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListTile(
            tileColor: Colors.orangeAccent,
            title: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Text(
                  this.widget.title
            )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(title: this.widget.title)));
            }));
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.greenAccent,
        child: ListTile(
            title: Text(widget.title),
            onTap: () {
              Navigator.pop(context);
            }));
  }
}
