import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CI taty',
      home: MyHomePage(title: 'CI taty', author: 'CI author', source: 'CI source'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.author, this.source}) : super(key: key);
  final String title;
  final String author;
  final String source;

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
                child: Text(this.widget.title)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(title: this.widget.title, author: this.widget.author, source: this.widget.source)));
            }));
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({Key key, this.title, this.author, this.source}) : super(key: key);
  final String title;
  final String author;
  final String source;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
        child: ListView(
      children: [
        Row(children: [
          Text(widget.title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))
        ]),
        Row(children: [
          Text(widget.author,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey)),
          Text(widget.source,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey))
        ])
      ],

      /*onTap: () {
              Navigator.pop(context);
            }*/
    ));
  }
}
