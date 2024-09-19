// Class Kendaraan yang merupakan abstract class
// Memiliki Atribut kode dan merk untuk setiap kendaraan
// Memiliki method infoKendaraan yang akan di override oleh class turunannya

abstract class Kendaraan {
  //atribut
  String kode;
  String merk;

  //constructor
  Kendaraan(this.kode, this.merk);

  //method
  void infoKendaraan();
}
