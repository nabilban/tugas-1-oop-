import 'package:tugas1/clear_screen.dart';
import 'package:tugas1/mobil.dart';
import 'package:tugas1/sewa_mobil.dart';
import 'dart:io';

void main(List<String> args) {
  //create object
  SewaMobil sewa = SewaMobil();
  bool isRunning = true;

  //predefined data
  sewa.tambahMobil(Mobil('avanza', '123123', 'Toyota'));
  sewa.tambahMobil(Mobil('xenia', '123124', 'Daihatsu', 'Rizky'));
  sewa.tambahMobil(Mobil('ertiga', '123125', 'Suzuki'));
  clearScreen();
  //looping
  while (isRunning) {
    //menu

    print('Menu:');
    print('1. Tambah Mobil');
    print('2. Sewa Mobil');
    print('3. Tampilkan Mobil');
    print('4. Keluar');
    print('Pilih menu: ');
    var menu = int.parse(stdin.readLineSync() ?? '0');

    //switch case
    switch (menu) {
      case 1:
        clearScreen();
        print('Masukkan nama mobil: ');
        String inputName = stdin.readLineSync()!;
        print('Masukkan kode mobil: ');
        String inputCode = stdin.readLineSync()!;
        print('Masukkan merk mobil: ');
        String inputBrand = stdin.readLineSync()!;
        sewa.tambahMobil(Mobil(inputName, inputCode, inputBrand));
        break;
      case 2:
        clearScreen();
        sewa.tampilkanMobil();
        print('Masukkan kode mobil: ');
        var kode = stdin.readLineSync()!;
        print('Masukkan nama penyewa: ');
        var namaPenyewa = stdin.readLineSync()!;
        sewa.sewaMobil(kode, namaPenyewa);
        break;
      case 3:
        clearScreen();
        sewa.tampilkanMobil();
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
