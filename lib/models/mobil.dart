import 'package:tugas1/kendaraan.dart';

// Class Mobil yang merupakan turunan dari Kendaraan
// Memiliki atribut nama dan namaPenyewa
// Properti namaPenyewa bersifat private
// Getter dan setter digunakan untuk mengakses properti private
// Setter memiliki validasi untuk mengubah namaPenyewa
// Method infoKendaraan digunakan untuk menampilkan informasi mobil yang merupakan override
//dari method infoKendaraan di class Kendaraan
class Mobil extends Kendaraan {
  //atribut
  String nama;
  String? _namaPenyewa;

  //constructor
  Mobil(this.nama, String kode, String merk, [this._namaPenyewa])
      : super(kode, merk);

  // Getter untuk mendapatkan nama penyewa
  String? get namaPenyewa => _namaPenyewa;

  // Setter untuk mengubah nama penyewa dengan validasi
  set namaPenyewa(String? penyewa) {
    if (_namaPenyewa == null) {
      _namaPenyewa = penyewa;
      print('Mobil $nama berhasil disewa oleh $penyewa.');
    } else {
      print('Mobil $nama sudah disewa.');
    }
  }

  // Method infoKendaraan untuk menampilkan informasi mobil (override dari Kendaraan)
  @override
  void infoKendaraan() {
    print(
        'Nama Mobil: $nama, Kode Mobil: $kode, Merk: $merk, Penyewa: ${_namaPenyewa ?? "Belum disewa"}');
  }
}
