import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/screens/burc_detay.dart';
import 'package:flutter_burc_rehberi/screens/burc_listesi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/burcListesi",
      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/"); // /burcDetay/(index)
        if(pathElemanlari[1] == "burcDetay") {
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
      title: "Burç Rehberi App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

