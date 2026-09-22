void main() {
  List<int> daftarNilai = [80, 90, 65, 70, 95];

  var nilaiTuntas = daftarNilai.where((element) => element >= 75);
  print("Nilai Lulus: $nilaiTuntas");

  var evaluasi = daftarNilai.map((item) {
    if (item >= 85) return 'A';
    if (item >= 75) return 'B';
    return 'C';
  });

  print("Predikat: ${evaluasi.toList()}");
}