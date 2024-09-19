import 'package:tugas1/kendaraan.dart';

class Motor extends Kendaraan {
  final String nama;
  String? _namaPenyewa;

  Motor(this.nama, String kode, String merk, [this._namaPenyewa])
      : super(kode, merk);

// Getter for nama
  String? get namaPenyewa => _namaPenyewa;

  // Setter with validation
  set namaPenyewa(String? penyewa) {
    if (_namaPenyewa == null) {
      _namaPenyewa = penyewa;
    } else {
      print('Motor ini sudah disewa.');
    }
  }

  @override
  void infoKendaraan() {
    print(
        'Nama Motor: $nama, Kode Motor: $kode, Merk: $merk, Penyewa: ${_namaPenyewa ?? "Belum disewa"}');
  }
}
