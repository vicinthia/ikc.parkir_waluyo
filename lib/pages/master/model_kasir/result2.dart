import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:eparkir_waluyo/pages/master/model_kasir/calculate.dart';

// import '../print/bluetooth/print_test.dart';

class ResultPage2 extends StatefulWidget {
  final String Jumlah;
  final String Harga;
  final String Waktuku;
  final int pembayaran;
  final int total;
  final int id;
  final calcController;
  final total2;
  final intotal;

  final Jumlahcontroller;
  final tglcontroller;
  final ValueChanged<String> onChanged;
  // List<String> Jumlahcontroller = [];

  //TextEditingController Jumlahcontroller;

  ResultPage2(
      {this.Harga,
      this.Jumlah,
      this.total,
      this.pembayaran,
      this.Jumlahcontroller,
      this.onChanged,
      this.tglcontroller,
      this.Waktuku,
      this.id,
      this.calcController,
      this.total2,
      this.intotal});

  @override
  State<ResultPage2> createState() => _ResultPage2State();
}

class _ResultPage2State extends State<ResultPage2> {
  TextEditingController calcController = new TextEditingController();

  int uang;
  int id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uang = widget.intotal;
    id = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "TOTAL KEMBALIAN",
              style: TextStyle(
                  fontSize: 30,
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
                  widget.total2.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     //Calculate calc = Calculate(harga: harga, jumlah: jumlah);
            //     // FnlPpnInt fiks = FnlPpnInt(realPpn: realPpn);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => PrintTest(
            //                 total: widget.total,
            //                 Jumlah: widget.Jumlah,
            //                 Harga: widget.Harga,
            //                 Waktuku: widget.Waktuku,
            //                 total2: widget.total2,
            //                 intotal: widget.intotal,
            //                 pembayaran: widget.pembayaran,
            //                 id: widget.id)));
            //   },
            //   child: Icon(Icons.print),
            // )
            // Container(
            //   padding: EdgeInsets.all(18.0),
            //   child: TextFormField(
            //     controller: calcController,
            //     keyboardType: TextInputType.number,
            //     decoration: InputDecoration(
            //       label: Text("Uang Pelanggan"),
            //     ),
            //   ),
            // ),
            // IconButton(
            //     onPressed: () {
            //       calcKembali calc = calcKembali(
            //         calcController: calcController,
            //         uang: uang,
            //       );
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => PrintTest(
            //                   calcController: calcController,
            //                   total: widget.total,
            //                   Jumlah: widget.Jumlah,
            //                   Harga: widget.Harga,
            //                   Waktuku: widget.Waktuku)));
            //     },
            //     icon: Icon(Icons.calculate))
          ],
        ),
      ),
    );
  }
}
