import 'package:flutter/material.dart';
import '../model/pesanan.dart';
import '../widget/sidebar.dart';

class KontakPage extends StatefulWidget {
  const KontakPage({Key? key}) : super(key: key);
  _PesananDetailState createState() => _PesananDetailState();
}

class _PesananDetailState extends State<KontakPage> {
  Stream<Pesanan> getData() async* {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Sidebar(),
        appBar: AppBar(title: Text("Kontak & Lokasi")),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Facebook : Toko Miracle Zanneti",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Twitter : @tokomiraclezanneti",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Instagram : @tokomiraclezanneti",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "TikTok : @tokomiraclezanneti",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Email : tokomiraclezanneti@gmail.com",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "WhatsApp : 081274686637",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Lokasi : Jl. Raya Cikarang - Cibarusah No. 168, Cikarang Square, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17550",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Google Maps : M4PR+96 Pasirsari, Bekasi Regency, West Java",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            )
          ],
        ));
  }
}
