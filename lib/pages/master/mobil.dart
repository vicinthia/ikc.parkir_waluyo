import 'package:eparkir_waluyo/pages/master/transaksi/input2.dart';
import 'package:flutter/material.dart';

class mobilTransaksi extends StatefulWidget {
  @override
  State<mobilTransaksi> createState() => _mobilTransaksiState();
}

class _mobilTransaksiState extends State<mobilTransaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cashier Ticket"),
        ),
        body: InputPage2());
  }
}
