import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:flutter_burc_rehberi/utils/strings.dart';

class BurcListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Burc> tumBurclar = veriGetir();

    return Scaffold(
      appBar: AppBar(title: Text("Burç Rehberi")),
      body: Container(),
    );
  }

  List<Burc> veriGetir() {
    List<Burc> burcFill = [];

    // Getting length from BURC_ADLARI for making dynamic length
    for (int i = 0; i < Strings.BURC_ADLARI.length; i++) {
      // Converting path to string value
      // Koc -> koc1.png
      String kucukResim = "/images/${Strings.BURC_ADLARI[i].toLowerCase()}${i+1}.png";
      // Koc -> koc_buyuk1.png
      String buyukResim = "/images/${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i+1}.png";

      burcFill.add(Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim));
    }
    return burcFill;
  }
}
