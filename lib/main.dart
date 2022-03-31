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
  final List gambar = [
    [
      'https://cdn-cas.orami.co.id/parenting/images/Wisata_Banyuwangi_-_De_Djawatan.width-800.jpg',
      "Wisata D'Jawatan"
    ],
    [
      'https://www.tempatwisata.pro/users_media/3150/Foto%20Pulau%20Merah.jpg',
      'Pantai Pulau Merah'
    ],
    [
      'https://idnexplore.com/wp-content/uploads/2020/01/Tempat-Wisata-Banyuwangi.jpg',
      "Pantai Boom Banyuwangi"
    ],
    [
      'https://pariwisatabanyuwangi.com/wp-content/uploads/2018/04/Baluran.jpg',
      "Taman Nasional Baluran"
    ]
  ];

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
              return Column(children: <Widget>[
                Image.network(gambar[index][0]),
                Text(gambar[index][1]),
                const SizedBox(height: 300)
              ]);
            }));
  }
}
