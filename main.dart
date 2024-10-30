//script dasar
import 'package:coba/app.dart';
import 'package:coba/application/nilaisiswa1.dart';
import 'package:coba/application/nilaisiswa2.dart';
import 'package:coba/views/homeview.dart';
import 'package:coba/views/loginview.dart';
import 'package:coba/views/movie_view.dart';
import 'package:coba/views/transaksiview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Nilaisiswa1(),

        // initialRoute: '/',
        // routes: {
        // '/login': (context) => LoginView(),
        // '/': (context) => HomeView(),
        // '/transaksi': (context) => Transaksiview(), 
        // '/movie': (context) => MovieView(),
        // // '/profile': (_) => ProfileView(),
      // }
    );
  }
}
