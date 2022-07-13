import 'package:eparkir_waluyo/pages/master/model_kasir/result2.dart';
import 'package:eparkir_waluyo/pages/master/print/print_test.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:eparkir_waluyo/pages/master/model_kasir/calculate.dart';

// import '../print/bluetooth/print_test.dart';

class ResultPage extends StatefulWidget {
  final String Jumlah;
  final String Harga;
  final String Waktuku;
  final int total;
  final int intotal;
  final int id;

  final Jumlahcontroller;
  final tglcontroller;
  final ValueChanged<String> onChanged;
  // List<String> Jumlahcontroller = [];

  //TextEditingController Jumlahcontroller;

  ResultPage(
      {this.Harga,
      this.Jumlah,
      this.total,
      this.intotal,
      this.Jumlahcontroller,
      this.onChanged,
      this.tglcontroller,
      this.Waktuku,
      this.id});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TextEditingController calcController = new TextEditingController();

  int uang;
  String pembayaran;
  int ppn;
  int id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ppn = widget.total + widget.intotal;
    uang = ppn; // uang = total + ppn
    id = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "TOTAL",
                style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "IDR ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    ppn.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Ticket Terjual ${widget.Jumlah} pada ID Transaksi M0${widget.id} \n dengan Harga Satuan ${widget.Harga} \n ${widget.Waktuku}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              // Container(
              //   padding: EdgeInsets.all(18.0),
              //   child: TextFormField(
              //     controller: calcController,
              //     keyboardType: TextInputType.number,
              //     decoration: InputDecoration(
              //       label: Text("Uang Pembayaran"),
              //     ),
              //     onChanged: (text) {
              //       pembayaran = text;
              //     },
              //   ),
              // ),
              IconButton(
                  onPressed: () {
                    // calcKembali calc = calcKembali(
                    //   calcController: calcController,
                    //   uang: uang,
                    // );
                    // PpnInt ppn = PpnInt(
                    //   uang: uang,
                    // );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrintTest(
                                // calcController: calcController,
                                total: widget.total,
                                intotal: widget.intotal,
                                Jumlah: widget.Jumlah,
                                Harga: widget.Harga,
                                Waktuku: widget.Waktuku,
                                // pembayaran: int.parse(pembayaran),
                                // total2: calc.calculateKembalian(),
                                id: id)));
                  },
                  icon: Icon(Icons.print))
            ],
          ),
        ),
      ),
    );
  }
}
