import 'package:tugas1/kendaraan.dart'; //import file kendaraan.dart

class Mobil extends Kendaraan {
  //atribut private
  //final digunakan untuk membuat atribut _nama menjadi read-only diinisialisasi sekali
  final String _nama;
  String? _namaPenyewa;

  //constructor
  Mobil(super.kode, super.merk, this._nama, [this._namaPenyewa]);

  // Setter untuk mengubah _nama penyewa dengan validasi
  set namaPenyewa(String? penyewa) {
    if (_namaPenyewa == null) {
      _namaPenyewa = penyewa;
      print('Mobil $_nama berhasil disewa oleh $penyewa.');
    } else {
      print('Mobil $_nama sudah disewa.');
    }
  }

  // Method infoKendaraan untuk menampilkan informasi mobil (override dari Kendaraan)
  // Method ini juga bisa disebut sebagai getter yang mengakses properti private ketika dipanggil
  @override
  void infoKendaraan() {
    print(
        'Nama Mobil: $_nama, Kode Mobil: $kode, Merk: $merk, Penyewa: ${_namaPenyewa ?? "Belum disewa"}');
  }
}
