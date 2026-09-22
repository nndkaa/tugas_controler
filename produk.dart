class Produk {
  String namaProduk;
  int _nilaiHarga;

  Produk(this.namaProduk, int hargaAwal) : _nilaiHarga = hargaAwal;
  Produk.gratis(this.namaProduk) : _nilaiHarga = 0;

  int get harga => _nilaiHarga;

  set harga(int hargaBaru) {
    if (hargaBaru >= 0) {
      _nilaiHarga = hargaBaru;
    } else {
      print("Harga tidak boleh negatif!");
    }
  }
}

void main() {
  var item1 = Produk("Laptop", 5000000);
  print("${item1.namaProduk}: Rp${item1.harga}");

  var item2 = Produk.gratis("Sampel Stiker");
  print("${item2.namaProduk}: Rp${item2.harga}");

  item1.harga = -100;
}