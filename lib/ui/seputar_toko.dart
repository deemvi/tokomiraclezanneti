import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

class SeputarToko extends StatelessWidget {
  const SeputarToko({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Seputar Toko")),
      body: Center(
        child: Text(
            "Toko Miracle Zanneti adalah salah satu toko Perabot di Cikarang. Dimulai dengan aspirasi mendapatkan kemudahan membeli perabotan rumah yang berkualitas dan bermerek di Cikarang. Rumah adalah dimana hati dan jiwa kita berada. Di rumahlah dimana kita meluangkan banyak waktu dengan keluarga yang kita cintai. Oleh karena itu, di aplikasi Toko Miracle Zanneti, kami tidak hanya jual perabot online, tetapi kami peduli untuk memberikan berbagai pilihan yang unik, inspirasional, dan kualitas terbaik dari seluruh dunia. Kami percaya bahwa selera ada dengan banyak rupa, bentuk, dan gaya baik itu modern retro, shabby chic, maupun timeless contemporary sehingga kami semaksimal mungkin mencoba untuk menghadirkan banyak pilihan bagi Anda untuk membeli perabotan di aplikasi toko perabot online kami. Furnitur, perabotan, dekorasi dan pernak pernik di rumah adalah refleksi dari setiap kepribadian masing-masing orang, dan kami ingin memperlihatkannya melalui produk pilihan kami yang bisa disesuaikan dengan desain interior rumah Anda. Mencari dekorasi dan beli furniture secara online dapat membuat frustrasi dan memakan banyak waktu untuk kebanyakan orang. Di Toko Miracle Zanneti, kami hanya melayani pemesanan di wilayah Cikarang saja. Untuk menjaga kepuasan pembeli, kami telah membebaskan ongkos kirim untuk setiap pembelian. Selain itu, kami juga memfasilitasi pengembalian barang dengan syarat & ketentuan tertentu. Oleh karena itu, belilah perabot di Toko Miracle Zanneti sekarang!"),
      ),
    );
  }

  // _tombolUbah() {
  //   return StreamBuilder(
  //       stream: getData(),
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
