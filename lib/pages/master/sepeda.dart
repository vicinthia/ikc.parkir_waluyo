import 'package:eparkir_waluyo/pages/master/transaksi/input.dart';
import 'package:flutter/material.dart';

class sepedaTransaksi extends StatefulWidget {
  @override
  State<sepedaTransaksi> createState() => _sepedaTransaksiState();
}

class _sepedaTransaksiState extends State<sepedaTransaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cashier Ticket"),
        ),
        body: InputPage());
  }
}
