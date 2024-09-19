import 'package:tugas1/clear_screen.dart';
import 'package:tugas1/models/mobil.dart';
import 'package:tugas1/models/motor.dart';
import 'package:tugas1/sewa_kendaraan.dart';
import 'dart:io';

void main() {
  //create object sewa untuk mengakses class SewaKendaraan
  SewaKendaraan sewa = SewaKendaraan();
  //variabel isRunning untuk mengecek apakah program berjalan atau tidak
  bool isRunning = true;

  //predefined data
  //menambahkan kendaraan ke dalam daftarKendaraan menggunakan method tambahKendaraan
  //method ini menerima parameter berupa object Kendaraan (Motor/Mobil)yang merupakan turunan dari Kendaraan
  //sehingga object Motor/Mobil dapat dijadikan sebagai parameter
  sewa.tambahKendaraan(Mobil('xenia', '1', 'Daihatsu', 'Rizky'));
  sewa.tambahKendaraan(Mobil('ertiga', '2', 'Suzuki'));

  sewa.tambahKendaraan(Motor('Vario', '3', 'Honda'));
  sewa.tambahKendaraan(Motor('Nmax', '4', 'Yamaha', 'nabil'));

  clearScreen();
  //looping
  while (isRunning) {
    //menu aplikasi
    print('-- Aplikasi Sewa Kendaraan --');
    print('Selamat datang di aplikasi sewa kendaraan nabil Owo');
    print('Menu:');
    print('1. Tambah Kendaraan');
    print('2. Sewa Kendaraan');
    print('3. Tampilkan Kendaraan');
    print('4. Keluar');
    print('Pilih menu: ');
    //input menu
    var menu = int.parse(stdin.readLineSync() ?? '0');

    //switch case
    switch (menu) {
      case 1:
        //case 1 untuk menambahkan kendaraan
        clearScreen();
        print('masukan Tipe Kendaraan (motor/mobil): ');
        String inputType = stdin.readLineSync()!;
        //validasi input
        if (inputType != 'motor' && inputType != 'mobil') {
          clearScreen();
          print('Tipe Kendaraan tidak tersedia');
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
        //case 2 untuk menyewa kendaraan
        clearScreen();
        sewa.tampilkanKendaraan();
        print('Masukkan kode mobil: ');
        var kode = stdin.readLineSync()!;
        print('Masukkan nama penyewa: ');
        var namaPenyewa = stdin.readLineSync()!;
        sewa.sewaKendaraan(kode, namaPenyewa);
        break;
      case 3:
        //case 3 untuk menampilkan kendaraan
        clearScreen();
        sewa.tampilkanKendaraan();
        break;
      case 4:
        //case 4 untuk keluar dari program
        clearScreen();
        isRunning = false;
        print('Program selesai , terimakasih Owo');
        break;
      default:
        //default case (jika menu tidak tersedia)
        clearScreen();
        print('Menu tidak tersedia.');
    }
  }
}
