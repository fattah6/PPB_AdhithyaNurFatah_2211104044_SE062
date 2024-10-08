import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WisataScreen(),
    );
  }
}

class WisataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Rekomendasi Wisata',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Taman Nasional Komodo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://digital-bucket.prod.bfi.co.id/assets/Blog/Blog%20New/Tempat%20wisata/Tempat%20wisata%20di%20Indonesia%20Komodo.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Taman Nasional Komodo terletak di ujung paling barat provinsi Nusa Tenggara Timur. Tidak hanya dapat menyaksikan hewan prasejarah Komodo saja, terdapat beberapa destinasi wisata lainnya di Kawasan Taman Nasional Komodo yang menarik untuk dikunjungi.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Kunjungi Sekarang!'),
            ),
          ],
        ),
      ),
    );
  }
}