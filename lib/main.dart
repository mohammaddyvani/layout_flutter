// GridView Flutter
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Layout',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.only(top: 50),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image(
                  width: 120.0,
                  image: NetworkImage("https://poliwangi.ac.id/wp-content/uploads/2021/02/logo-poliwangi.png"),
                ),
                Text("Hulk", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                  width: 120.0,
                  image: NetworkImage("https://poliwangi.ac.id/wp-content/uploads/2021/02/logo-poliwangi.png"),
                ),
                Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                  width: 120.0,
                  image: NetworkImage("https://poliwangi.ac.id/wp-content/uploads/2021/02/logo-poliwangi.png"),
                ),
                Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                  width: 120.0,
                  image: NetworkImage("https://poliwangi.ac.id/wp-content/uploads/2021/02/logo-poliwangi.png"),
                ),
                Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                  width: 120.0,
                  image: NetworkImage("https://poliwangi.ac.id/wp-content/uploads/2021/02/logo-poliwangi.png"),
                ),
                Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                  width: 120.0,
                  image: NetworkImage("https://poliwangi.ac.id/wp-content/uploads/2021/02/logo-poliwangi.png"),
                ),
                Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
          ],
        ));
  }
}
