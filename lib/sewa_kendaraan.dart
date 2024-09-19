import 'package:tugas1/clear_screen.dart';
import 'package:tugas1/kendaraan.dart';
import 'package:tugas1/models/mobil.dart';
import 'package:tugas1/models/motor.dart';

// Class SewaKendaraan
// Memiliki atribut daftarKendaraan yang merupakan list dari Kendaraan

// Memiliki method tambahKendaraan untuk menambahkan kendaraan ke dalam daftarKendaraan
// Method ini menerima parameter berupa object Kendaraan (Motor/Mobil)yang merupakan turunan dari Kendaraan
// sehingga object Motor/Mobil dapat dijadikan sebagai parameter

// Method sewaKendaraan untuk menyewa kendaraan
// Method ini akan mengecek apakah kendaraan dengan kode yang dimasukkan ada di daftarKendaraan
// menggunakan perulangan for untuk mengecek apakah kendaraan dengan kode yang dimasukkan ada di daftarKendara
// kemudian menggunakan perulangan if untuk mengecek apakah kendaraan tersebut merupakan object Mobil atau Motor
// jika iya, maka akan mengubah namaPenyewa menggunakan setter

// Method tampikanKendaraan untuk menampilkan daftar kendaraan yang tersedia
// Method ini akan menampilkan daftar mobil dan motor yang tersedia
// Jika tidak ada mobil yang tersedia, akan menampilkan pesan 'Tidak ada mobil tersedia.'
//method ini menggunakan perulanagn if untuk mengecek apakah daftarKendaraan memiliki object Mobil atau Motor
//jika ada, akan menampilkan daftar mobil atau motor yang tersedia ,yang mana menggunakan method infoKendaraan
//yang merupakan method override dari class Kendaraan

class SewaKendaraan {
  //atribut
  //daftarKendaraan bertipe List dari Kendaraan
  final List<Kendaraan> daftarKendaraan = [];

  //method untuk menambahkan kendaraan ke dalam daftarKendaraan
  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan
        .add(kendaraan); //menambahkan kendaraan ke dalam daftarKendaraan
    clearScreen();
    print('Kendaraan berhasil ditambahkan.');
  }

  //method untuk menyewa kendaraan
  void sewaKendaraan(String kode, String namaPenyewa) {
    for (var kendaraan in daftarKendaraan) {
      //jika kendaraan dengan kode yang dimasukkan ada di daftarKendaraan
      if (kendaraan.kode == kode) {
        //jika kendaraan merupakan object Mobil
        if (kendaraan is Mobil) {
          kendaraan.namaPenyewa = namaPenyewa; // Menggunakan setter
        }
        //jika kendaraan merupakan object Motor
        if (kendaraan is Motor) {
          kendaraan.namaPenyewa = namaPenyewa; // Menggunakan setter
        }
        return;
      }
    }
    clearScreen();
    print('Kendaraan dengan kode $kode tidak ditemukan.');
  }

  //method untuk menampilkan daftar kendaraan yang tersedia
  void tampilkanKendaraan() {
    //jika daftarKendaraan kosong
    if (daftarKendaraan.isEmpty) {
      clearScreen();
      print('Tidak ada mobil tersedia.');
      return;
    }

    clearScreen();
    //jika daftarKendaraan memiliki object Mobil atau Motor
    if (daftarKendaraan.any((element) => element is Mobil)) {
      print('Daftar mobil :');
      for (var i in daftarKendaraan) {
        if (i is Mobil) {
          i.infoKendaraan();
        }
      }
    }
    if (daftarKendaraan.any((element) => element is Motor)) {
      print('Daftar motor :');
      for (var i in daftarKendaraan) {
        if (i is Motor) {
          i.infoKendaraan();
        }
      }
    }
  }
}
