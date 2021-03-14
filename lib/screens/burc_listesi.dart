import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:flutter_burc_rehberi/utils/strings.dart';

class BurcListesi extends StatelessWidget {
  List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = veriGetir();

    return Scaffold(
      appBar: AppBar(title: Text("Burç Rehberi")),
      body: listViewBuilder(),
    );
  }

  List<Burc> veriGetir() {
    List<Burc> burcFill = [];

    // Getting length from BURC_ADLARI for making dynamic length
    for (int i = 0; i < Strings.BURC_ADLARI.length; i++) {
      // Converting path to string value
      // Koc -> koc1.png
      String kucukResim = "images/${Strings.BURC_ADLARI[i].toLowerCase()}${i+1}.png";
      // Koc -> koc_buyuk1.png
      String buyukResim = "images/${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i+1}.png";

      burcFill.add(Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim));
    }
    return burcFill;
  }

  Widget listViewBuilder() {
    // Getting itemCount from BURC_ADLARI for making dynamic length
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return oneLineBurc(context, index);
    }, itemCount: Strings.BURC_ADLARI.length,
    padding: EdgeInsets.all(4),);
  }

  Widget oneLineBurc(BuildContext context, int index) {
    Burc iterBurc = tumBurclar[index];
    return Card(
      elevation: 4,
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, "/burcDetay/$index"),
        leading: Image.asset(iterBurc.burcKucukResim),
        title: Text(iterBurc.burcAdi,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.teal.shade400,
        ),),
        subtitle: Text(iterBurc.burcTarihi,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.teal.shade200,
        ),),
        trailing: Icon(Icons.forward_rounded, color: Colors.orange,),
      ),
    );
  }
}


