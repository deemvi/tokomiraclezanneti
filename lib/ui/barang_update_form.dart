import 'package:flutter/material.dart';
import '../model/barang.dart';
import '../model/pesanan.dart';
import '../service/barang_service.dart';
import '../service/pesanan_service.dart';
import 'pesanan_laporan.dart';

class BarangUpdateForm extends StatefulWidget {
  final Barang barang;
  const BarangUpdateForm({Key? key, required this.barang}) : super(key: key);
  _BarangUpdateFormState createState() => _BarangUpdateFormState();
}

class _BarangUpdateFormState extends State<BarangUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPemesanCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();
  final _noTelpCtrl = TextEditingController();
  final _namaBarangCtrl = TextEditingController();
  final _hargaCtrl = TextEditingController();
  final _jumlahPesananCtrl = TextEditingController();
  Future<Barang> getData() async {
    Barang data = await BarangService().getById(widget.barang.id.toString());
    setState(() {
      _namaBarangCtrl.text = data.namaBarang;
      _hargaCtrl.text = data.harga;
    });
    return data;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pesan Sekarang")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldnamaPemesan(),
              _fieldalamat(),
              _fieldnoTelp(),
              _fieldNamaBarang(),
              _fieldharga(),
              _fieldjumlahPesanan(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldnamaPemesan() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pemesan"),
      controller: _namaPemesanCtrl,
    );
  }

  _fieldalamat() {
    return TextField(
      decoration: const InputDecoration(labelText: "Alamat"),
      controller: _alamatCtrl,
    );
  }

  _fieldnoTelp() {
    return TextField(
      decoration: const InputDecoration(labelText: "No. Telepon"),
      controller: _noTelpCtrl,
    );
  }

  _fieldNamaBarang() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Barang"),
      controller: _namaBarangCtrl,
    );
  }

  _fieldharga() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaCtrl,
    );
  }

  _fieldjumlahPesanan() {
    return TextField(
      decoration: const InputDecoration(labelText: "Jumlah Pesanan"),
      controller: _jumlahPesananCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () async {
          Pesanan pesanan = new Pesanan(
              namaPemesan: _namaPemesanCtrl.text,
              alamat: _alamatCtrl.text,
              noTelp: _noTelpCtrl.text,
              namaBarang: _namaBarangCtrl.text,
              harga: _hargaCtrl.text,
              jumlahPesanan: _jumlahPesananCtrl.text,
              pesan:
                  "Barang berhasil dipesan. Silakan tunggu konfirmasi dari pihak toko.",
              status: "Belum dikonfirmasi");
          await PesananService().simpan(pesanan).then((value) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => PesananLaporan(pesanan: value)));
          });
        },
        style: ElevatedButton.styleFrom(primary: Colors.green),
        child: const Text("Kirim Pesanan"));
  }
}
