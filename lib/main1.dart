import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: Colors.greenAccent,
            child: FlutterLogo(
              size: 60,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: FlutterLogo(
              size: 60,
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: FlutterLogo(
              size: 60,
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: FlutterLogo(
              size: 60,
            ),
          )
        ]));
  }
}
