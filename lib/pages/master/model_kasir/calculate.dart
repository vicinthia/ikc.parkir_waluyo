class CalculateInt {
  final String Harga;
  final String Jumlah;
  final int ints;
  final Jumlahcontroller;
  double _total;

  CalculateInt({this.Harga, this.Jumlah, this.ints, this.Jumlahcontroller});

  double calculateTotal() {
    _total = double.tryParse(Harga) * double.tryParse(Jumlah) * 20 / 100;
    return _total;
  }
}

class RealTotal {
  final String Harga;
  final String Jumlah;
  final Jumlahcontroller;
  int _realtotal;

  RealTotal({this.Harga, this.Jumlah, this.Jumlahcontroller});

  int TotalAsli() {
    _realtotal = int.tryParse(Harga) * int.tryParse(Jumlah);
    return _realtotal;
  }
}

class calcKembali {
  final calcController;
  final int uang;

  int _totalKembalian;
  calcKembali({this.calcController, this.uang});

  int calculateKembalian() {
    _totalKembalian = (int.tryParse(calcController.text) - uang);
    return _totalKembalian;
  }
}
