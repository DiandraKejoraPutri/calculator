import 'package:coba/app.dart';
import 'package:coba/main.dart';
import 'package:flutter/material.dart';
import 'nilaisiswa1.dart';

void main() {
  runApp(MyApp());
}

class NilaiSiswa2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rata-Rata Nilai Siswa',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = "";

  void _hitungRataRata() {
    final double? nilai1 = double.tryParse(_controller1.text);
    final double? nilai2 = double.tryParse(_controller2.text);

    if (nilai1 == null ||
        nilai1 < 0 ||
        nilai1 > 100 ||
        nilai2 == null ||
        nilai2 < 0 ||
        nilai2 > 100) {
      setState(() {
        _result = "Input tidak valid. Masukkan nilai antara 0 - 100.";
      });
      return;
    }

    double rataRata = (nilai1 + nilai2) / 2;
    String kategori;
    if (rataRata >= 85) {
      kategori = "A";
    } else if (rataRata >= 70) {
      kategori = "B";
    } else if (rataRata >= 55) {
      kategori = "C";
    } else {
      kategori = "D";
    }

    setState(() {
      _result = "Rata-rata: $rataRata\nKategori nilai: $kategori";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Penghitungan Rata-Rata Nilai & Pengelompokan Nilai')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan nilai pertama (0-100)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan nilai kedua (0-100)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungRataRata,
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
