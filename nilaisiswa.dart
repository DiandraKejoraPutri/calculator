// import 'package:coba/app.dart';
// import 'package:coba/main.dart';
// import 'package:flutter/material.dart';

// void main (){
//   runApp(MyApp());
// }
// class NilaiSiswa extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Nilai Siswa',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system,
//       home: HomePage(),
//     );
//   }
// }
// class HomePage extends StatefulWidget {
//   @override
//   _HomePage createState() => _HomePage();
// }

// class _HomePage extends State<HomePage> {
//   final TextEditingController _controller1 = TextEditingController();
//   final TextEditingController _controller2 = TextEditingController();
//   String _result = "";

//   void _hitungRataRata() {
//     final double? nilai1 = double.tryParse(_controller1.text);
//     final double? nilai2 = double.tryParse(_controller2.text);

//     if (nilai1 == null || nilai1 < 0 || nilai1 > 100 ||
//         nilai2 == null || nilai2 < 0 || nilai2 > 100) {
//       setState(() {
//       _result = "Input tidak valid. Masukkan nilai antara 0 - 100.";
//       });
//       return;
//     }
//   void _hitung() {
//     final double? 
//     nilai = double.tryParse(_controller1.text);
//     if (nilai == null || nilai < 0 || nilai > 100) {
//       setState(() => _result = "Input tidak valid. Masukkan nilai antara 0 - 100 !");
//       return;
//     }
//     setState(() {
//       if (nilai >= 85) _result = "Kategori nilai: A";
//       else if (nilai >= 70) _result = "Kategori nilai: B";
//       else if (nilai >= 55) _result = "Kategori nilai: C";
//       else _result = "Kategori nilai: D";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Pengelompokan Nilai')),
//       body: Padding(
//         padding: const EdgeInsets.all(14.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               //ngisi nilai
//               controller: _controller,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: 'Masukkan nilai (0-100)', border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: _hitung, child: Text('Hitung')),
//             SizedBox(height: 20),
//             Text(_result, style: TextStyle(fontSize: 18)),
//           ],
//         ),
//       ),
//     );
//   }
// }
