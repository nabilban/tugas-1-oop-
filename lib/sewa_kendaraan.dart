import 'package:tugas1/clear_screen.dart';
import 'package:tugas1/kendaraan.dart';
import 'package:tugas1/models/mobil.dart';
import 'package:tugas1/models/motor.dart';

class SewaKendaraan {
  final List<Kendaraan> daftarKendaraan = [];

  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan.add(kendaraan);
    clearScreen();
    print('Kendaraan berhasil ditambahkan.');
  }

  void tampilkanKendaraan() {
    if (daftarKendaraan.isEmpty) {
      clearScreen();
      print('Tidak ada mobil tersedia.');
      return;
    }

    clearScreen();
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
