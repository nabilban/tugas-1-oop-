import 'package:tugas1/kendaraan.dart';

class Mobil extends Kendaraan {
  String nama;
  String? namaPenyewa;

  Mobil(this.nama, String kode, String merk, [this.namaPenyewa])
      : super(kode, merk);

  @override
  void infoKendaraan() {
    print(
        'Nama Mobil: $nama, Kode Mobil: $kode, Merk: $merk, Penyewa: ${namaPenyewa ?? "Belum disewa"}');
  }
}
