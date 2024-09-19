import 'package:tugas1/kendaraan.dart';

// Class Motor yang merupakan turunan dari Kendaraan
// Memiliki atribut nama dan namaPenyewa
// Properti namaPenyewa bersifat private
// Getter dan setter digunakan untuk mengakses properti private
// Setter memiliki validasi untuk mengubah namaPenyewa
// Method infoKendaraan digunakan untuk menampilkan informasi motor yang merupakan override
// dari method infoKendaraan di class Kendaraan

class Motor extends Kendaraan {
  //atribut
  String nama;
  String? _namaPenyewa;

  //constructor
  Motor(this.nama, String kode, String merk, [this._namaPenyewa])
      : super(kode, merk);

  // Getter for nama
  String? get namaPenyewa => _namaPenyewa;

  // Setter with validation
  set namaPenyewa(String? penyewa) {
    if (_namaPenyewa == null) {
      _namaPenyewa = penyewa;
      print('motor $nama berhasil disewa oleh $penyewa.');
    } else {
      print('motor $nama sudah disewa.');
    }
  }

  // Method infoKendaraan to display motor information (override from Kendaraan)
  @override
  void infoKendaraan() {
    print(
        'Nama Motor: $nama, Kode Motor: $kode, Merk: $merk, Penyewa: ${_namaPenyewa ?? "Belum disewa"}');
  }
}
