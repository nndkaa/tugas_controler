abstract class Kendaraan {
  void bunyiklakson();
}

mixin KecepatanTinggi {
  void ngedrift() {
    print("Wuuusss! Kendaraan melaju sangat cepat!");
  }
}

class Motor extends Kendaraan {
  @override
  void bunyiklakson() {
    print("Tin tin!");
  }
}

class Mobil extends Kendaraan with KecepatanTinggi {
  @override
  void bunyiklakson() {
    print("Bim bim!");
  }
}

void main() {
  var unitMotor = Motor();
  print("Motor");
  unitMotor.bunyiklakson();

  var unitMobil = Mobil();
  print("\nMobil");
  unitMobil.bunyiklakson();
  unitMobil.ngedrift();
}