import 'package:flutter/material.dart';
import '../service/pesanan_service.dart';
import 'barang_page.dart';
import '../model/pesanan.dart';
import '../widget/sidebar.dart';

class PesananLaporan extends StatefulWidget {
  final Pesanan pesanan;
  const PesananLaporan({Key? key, required this.pesanan}) : super(key: key);
  _PesananDetailState createState() => _PesananDetailState();
}

class _PesananDetailState extends State<PesananLaporan> {
  Stream<Pesanan> getData() async* {
    Pesanan data = await PesananService().getById(widget.pesanan.id.toString());
    yield data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Pemberitahuan")),
      body: StreamBuilder(
        stream: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return Text('Data Tidak Ditemukan');
          }
          return Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Barang berhasil dipesan. Silakan tunggu konfirmasi dari pihak toko.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_tombolUbah()],
              )
            ],
          );
        },
      ),
    );
  }

  _tombolUbah() {
    return StreamBuilder(
        stream: getData(),
        builder: (context, AsyncSnapshot snapshot) => ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BarangPage()));
              // BarangUpdateForm(pesanan: snapshot.data)));
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: const Text("Belanja Lagi")));
  }
}
