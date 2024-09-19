import 'package:tugas1/clear_screen.dart';
import 'package:tugas1/mobil.dart';

class SewaMobil {
  final List<Mobil> _daftarMobil = [];

  void tambahMobil(Mobil mobil) {
    _daftarMobil.add(mobil);
    clearScreen();
    print('Mobil ${mobil.nama} berhasil ditambahkan.');
  }

  void tampilkanMobil() {
    if (_daftarMobil.isEmpty) {
      clearScreen();
      print('Tidak ada mobil tersedia.');
    } else {
      clearScreen();
      print('Daftar Mobil:');
      for (var mobil in _daftarMobil) {
        mobil.infoMobil();
      }
    }
  }

  void sewaMobil(String kode, String namaPenyewa) {
    for (var mobil in _daftarMobil) {
      if (mobil.kode == kode && mobil.namaPenyewa == null) {
        mobil.namaPenyewa = namaPenyewa;
        clearScreen();
        print('Mobil ${mobil.nama} berhasil disewa oleh $namaPenyewa.');
        return;
      }
    }
    print('Mobil tidak ditemukan atau sudah disewa.');
  }
}
