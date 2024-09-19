import 'package:tugas1/clear_screen.dart';
import 'package:tugas1/models/mobil.dart';
import 'package:tugas1/models/motor.dart';
import 'package:tugas1/sewa_kendaraan.dart';
import 'dart:io';

void main(List<String> args) {
  //create object
  SewaKendaraan sewa = SewaKendaraan();
  bool isRunning = true;

  //predefined data
  sewa.tambahKendaraan(Mobil('xenia', '1', 'Daihatsu', 'Rizky'));
  sewa.tambahKendaraan(Mobil('ertiga', '2', 'Suzuki'));

  sewa.tambahKendaraan(Motor('Vario', '3', 'Honda'));
  sewa.tambahKendaraan(Motor('Nmax', '4', 'Yamaha', 'nabil'));

  clearScreen();
  //looping
  while (isRunning) {
    //menu
    print('-- Aplikasi Sewa Kendaraan --');
    print('Selamat datang di aplikasi sewa kendaraan nabil Owo');
    print('Menu:');
    print('1. Tambah Kendaraan');
    print('2. Sewa Kendaraan');
    print('3. Tampilkan Kendaraan');
    print('4. Keluar');
    print('Pilih menu: ');
    var menu = int.parse(stdin.readLineSync() ?? '0');

    //switch case
    switch (menu) {
      case 1:
        clearScreen();
        print('masukan Tipe Kendaraan (motor/mobil): ');
        String inputType = stdin.readLineSync()!;
        if (inputType != 'motor' && inputType != 'mobil') {
          print('Tipe Kendaraan tidak tersedia');
          clearScreen();
          break;
        }
        print('Masukkan nama Kendaraan: ');
        String inputName = stdin.readLineSync()!;
        print('Masukkan kode kendaraan: ');
        String inputCode = stdin.readLineSync()!;
        print('Masukkan merk Kendaraan: ');
        String inputMerk = stdin.readLineSync()!;

        if (inputType == 'motor') {
          sewa.tambahKendaraan(Motor(inputName, inputCode, inputMerk));
        }
        if (inputType == 'mobil') {
          sewa.tambahKendaraan(Mobil(inputName, inputCode, inputMerk));
        }
        break;
      case 2:
        clearScreen();
        sewa.tampilkanKendaraan();
        print('Masukkan kode mobil: ');
        var kode = stdin.readLineSync()!;
        print('Masukkan nama penyewa: ');
        var namaPenyewa = stdin.readLineSync()!;
        break;
      case 3:
        clearScreen();
        sewa.tampilkanKendaraan();
        break;
      case 4:
        clearScreen();
        isRunning = false;
        print('Program selesai , terimakasih Owo');
        break;
      default:
        clearScreen();
        print('Menu tidak tersedia.');
    }
  }
}
