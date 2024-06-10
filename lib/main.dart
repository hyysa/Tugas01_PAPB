import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Box Shape & Caching Image', // Judul aplikasi
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title:
              '21104410009 - Tugas 01 PAPB : Box Shape & Caching Image'), // Halaman utama aplikasi
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget
            .title), // Judul halaman berdasarkan properti title yang diterima dari konstruktor
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green, // Warna latar belakang kontainer
            shape: BoxShape.circle, // Bentuk kontainer (lingkaran)
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                // Memuat gambar dari URL dengan caching
                'https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg',
              ),
              fit: BoxFit.cover, // Menyesuaikan gambar ke dalam kontainer
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
