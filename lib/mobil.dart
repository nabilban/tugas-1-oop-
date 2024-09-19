class Mobil {
  String nama;
  String kode;
  String merk;
  String? namaPenyewa;

  Mobil(this.nama, this.kode, this.merk, [this.namaPenyewa]);

  void infoMobil() {
    print(
        'Nama Mobil: $nama, Kode Mobil: $kode, Merk: $merk, Penyewa: ${namaPenyewa ?? "Belum disewa"}');
  }
}
