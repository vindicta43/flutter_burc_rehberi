import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/screens/burc_listesi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burç Rehberi App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BurcListesi(),
    );
  }
}
