import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("TOKO MIRACLE ZANNETI")),
      body: Center(
        child: Text(
            '''Melayani pembelian perabot untuk wilayah Cikarang. Klik menu "Semua Barang" untuk memesan barang.'''),
      ),
    );
    // return ([_tombolUbah()]);
  }

  // _tombolUbah() {
  //   return StreamBuilder(
  //       builder: (context, AsyncSnapshot snapshot) => ElevatedButton(
  //           onPressed: () {
  //             Navigator.push(context,
  //                 MaterialPageRoute(builder: (context) => BarangPage()));
  //             // BarangUpdateForm(pesanan: snapshot.data)));
  //           },
  //           style: ElevatedButton.styleFrom(primary: Colors.blue),
  //           child: const Text("Belanja Lagi")));
  // }
}
