import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adab Bertetangga"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1.Bertegur atau menyapa',
              'https://assets-a2.kompasiana.com/items/album/2018/03/12/african-american-neighbors-greeting-each-other-over-fence-137924297-5a9863920e23d900370c683e-5aa6535af1334477173d60a2.jpg?t=o&v=350',
              'Sering-seringlah bertegur sapa, tanyailah keadaan kesehatan mereka.'),
          _createPageItemUI(
              '2.Berbagi makanan',
              'https://i0.wp.com/www.gulalives.co/wp-content/uploads/2016/05/Makanan-untuk-tetangga.png',
              'Berikanlah kepada mereka sebagian makanan.'),
          _createPageItemUI(
              '3.Bawakan oleh oleh saat berpergian jauh',
              'https://realgood.id/assets/uploads/cover/original/20180509132118.jpg',
              'Bawakan sekadar buah tangan atau oleh oleh buat mereka, apabila kita pulang dari bepergian jauh.'),
          _createPageItemUI(
              '4.Membantu atau menolong',
              'https://4.bp.blogspot.com/-gwRuKbgnvHo/W2QkLaBG2BI/AAAAAAAAP_s/lExnV41VagAxfuTgwJUIIsN7prLDVd7lgCLcBGAs/s1600/kerja_bakti.jpg',
              'Bantulah mereka apabila sedang mengalami musibah ataupun menyelenggarakan hajatan.'),
          _createPageItemUI(
              'Berikanlah anak anak mereka sesuatu yang menyenangkan',
              'https://janethes.com/wp-content/uploads/2019/05/310.-Hadiah-untuk-Anak-yang-Puasa_Artboard-2.png',
              'Berikanlah anak-anak mereka sesuatu yang menyenangkan, berupa makanan ataupun mainan.'),
          _createPageItemUI(
              'Undang mereka',
              'https://img.okezone.com/content/2017/06/14/481/1715868/tetap-sehat-selama-ramadan-jangan-banyak-konsumsi-makanan-manis-dan-bersantan-ISkgb9SXVe.jpg',
              'Sesekali undanglah mereka makan bersama di rumah.'),
          _createPageItemUI(
              'berikanlah yang bermanfaat',
              'https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/rvEQh5lLdL.jpg',
              'Berikanlah hadiah kaset, buku bacaan yang mendorong mereka untuk lebih memahami Islam.'),
          _createPageItemUI(
              'Ajak ke acara',
              'https://images.unsplash.com/photo-1573919900573-33f075249e97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80',
              'Ajaklah mereka sesekali ke dalam suatu acara pengajian atau majelis ta’lim, atau pergilah bersama memenuhi suatu undangan walimah (apabila mereka juga diundang)'),
          _createPageItemUI(
            'Berlibur bersama',
            'https://cdn2.tstatic.net/makassar/foto/bank/images/hamdan-zoelva_20160715_172919.jpg',
            '"Ketika liburan cobalah untuk mengajak merakan untuk berliburan bersama untuk membuatnya menyenangkan, mungkin bisa ke pantai, museum dll',)
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}
