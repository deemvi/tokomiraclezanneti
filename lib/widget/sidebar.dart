import 'package:flutter/material.dart';
import '../ui/beranda.dart';
import '../ui/barang_page.dart';
import '../ui/pesanan_page.dart';
import '../ui/seputar_toko.dart';
import '../ui/kontak_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("TOKO MIRACLE ZANNETI"),
              accountEmail: Text("Segala yang Anda butuhkan tersedia di sini")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Semua Barang"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BarangPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Daftar Pesanan"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PesananPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Kontak & Lokasi"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KontakPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Seputar Toko"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SeputarToko()));
            },
          ),
        ],
      ),
    );
  }
}
