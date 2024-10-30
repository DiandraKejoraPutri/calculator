import 'package:coba/app.dart';
import 'package:coba/application/nilaisiswa2.dart';
import 'package:coba/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Nilaisiswa1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _nilaiController = TextEditingController();
  String _result = "";

  void _hitungKategori() {
    final double? nilai = double.tryParse(_nilaiController.text);
    if (nilai == null || nilai < 0 || nilai > 100) {
      setState(() => _result = "Input tidak valid. Masukkan nilai antara 0 - 100.");
      return;
    }
    setState(() {
      if (nilai >= 85) _result = "Kategori nilai: A";
      else if (nilai >= 70) _result = "Kategori nilai: B";
      else if (nilai >= 55) _result = "Kategori nilai: C";
      else _result = "Kategori nilai: D";
    });
  }

  void _navigateToSecondPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pengelompokan Kategori Nilai Siswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nilaiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan nilai (0-100)', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _hitungKategori, child: Text('Hitung Kategori')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigateToSecondPage,
              child: Text('Ke Halaman Rata-rata'),
            ),
          ],
        ),
      ),
    );
  }
}