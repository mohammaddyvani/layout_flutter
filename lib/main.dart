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
            padding: const EdgeInsets.all(15.0),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    //color: Colors.grey,
                    //borderRadius: BorderRadius.circular(20),
                    ),
                child: Column(children: <Widget>[
                  Image.network('https://cdn-cas.orami.co.id/parenting/images/Wisata_Banyuwangi_-_De_Djawatan.width-800.jpg'),
                  const Text("Titlee iki"),
                  const SizedBox(height: 30)
                ]),
              );
            }));
  }
}
