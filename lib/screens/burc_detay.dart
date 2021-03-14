import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:flutter_burc_rehberi/screens/burc_listesi.dart';

class BurcDetay extends StatelessWidget {
  int index;
  Burc selectedBurc;

  BurcDetay(this.index);

  @override
  Widget build(BuildContext context) {
    selectedBurc = BurcListesi.tumBurclar[index];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pinkAccent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                selectedBurc.burcBuyukResim,
                fit: BoxFit.fill,
              ),
              title: Text("${selectedBurc.burcAdi} Burcu Özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Text(
                selectedBurc.burcDetayi,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
