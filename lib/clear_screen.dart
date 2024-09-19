void clearScreen() {
  print("\x1B[2J\x1B[0;0H");
}
//hanya dipanggil untuk membersihkan layar
//dart tidak memiliki fungsi clear screen bawaan , sehingga kita membuat fungsi sendiri
//menggunakan escape sequence \x1B[2J\x1B[0;0H