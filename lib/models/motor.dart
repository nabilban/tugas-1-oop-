import 'package:tugas1/kendaraan.dart'; //import file kendaraan.dart

class Motor extends Kendaraan {
  //atribut private
  //final digunakan untuk membuat atribut _nama menjadi read-only diinisialisasi sekali
  final String _nama;
  String? _namaPenyewa;

  //constructor
  Motor(super.kode, super.merk, this._nama, [this._namaPenyewa]);

  // Setter with validation
  set namaPenyewa(String? penyewa) {
    if (_namaPenyewa == null) {
      _namaPenyewa = penyewa;
      print('motor $_nama berhasil disewa oleh $penyewa.');
    } else {
      print('motor $_nama sudah disewa.');
    }
  }

  // Method infoKendaraan untuk menampilkan informasi motor (override dari Kendaraan)
  // Method ini juga bisa disebut sebagai getter yang mengakses properti private ketika dipanggil
  @override
  void infoKendaraan() {
    print(
        'Nama Motor: $_nama, Kode Motor: $kode, Merk: $merk, Penyewa: ${_namaPenyewa ?? "Belum disewa"}');
  }
}
