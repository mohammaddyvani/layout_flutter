import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Layout',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Galeri'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
                  child: Column(children: <Widget>[
                Image.network('https://cdn-cas.orami.co.id/parenting/images/Wisata_Banyuwangi_-_De_Djawatan.width-800.jpg'),
                const Text('Test', style: TextStyle(fontWeight: FontWeight.bold))
              ]));
            }));
  }
}
