import 'dart:convert';

import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:eparkir_waluyo/pages/master/transaksi/input2.dart';
// import 'package:e_ticket/pages/master/kasir_weekend/input.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:eparkir_waluyo/landing_page.dart';

// import 'package:e_ticket/pages/master/model_kasir/result.dart';
// import 'package:e_ticket/pages/master/kasir_weekdays/input.dart';

//void main() => runApp(PrintTest());

class PrintTest extends StatefulWidget {
  final List list;
  final int index;

  final String Jumlah;
  final String Harga;
  final String pilihTanggal;
  final String Waktuku;
  final pembayaran;

  final total;
  final int total2;
  final intotal;
  final int id;

  PrintTest(
      {this.list,
      this.index,
      this.Harga,
      this.pembayaran,
      this.total,
      this.Jumlah,
      this.pilihTanggal,
      this.Waktuku,
      this.total2,
      this.intotal,
      this.id});
  @override
  State<PrintTest> createState() => _PrintTestState();
}

class _PrintTestState extends State<PrintTest> {
  List<BluetoothDevice> devices = [];
  BluetoothDevice selectedDevices;
  BlueThermalPrinter printer = BlueThermalPrinter.instance;

  int ppn;
  int realPpn;
  @override
  void initState() {
    super.initState();
    ppn = widget.total + widget.intotal;
    // realPpn = widget.pembayaran - ppn;
    getDevices();
  }

  void getDevices() async {
    devices = await printer.getBondedDevices();
    setState(() {});
  }

  List<String> jumlah = ['jml'], total = ['total'];
  //sample(String jumlah, total);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Thermal Printer Demo'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage2()));
              })),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<BluetoothDevice>(
                  value: selectedDevices,
                  hint: Text('Select Thermal Printer'),
                  onChanged: (devices) {
                    setState(() {
                      selectedDevices = devices;
                    });
                  },
                  items: devices
                      .map((e) => DropdownMenuItem(
                            child: Text(e.name),
                            value: e,
                          ))
                      .toList()),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  printer.connect(selectedDevices);
                },
                child: Text('Connect'),
              ),
              ElevatedButton(
                onPressed: () async {
                  printer.disconnect();
                },
                child: Text('Disconnect'),
              ),
              ElevatedButton(
                onPressed: () async {
                  if ((await printer.isConnected)) {
                    printer.printNewLine();
                    printer.printCustom('eParkir', 2, 1);
                    // printer.printNewLine();
                    printer.printNewLine();
                    printer.printCustom('Parkir Wisata Pantai Waluyo', 1, 1);
                    printer.printCustom('Kabupaten Probolinggo', 1, 1);
                    printer.printCustom('Telp : 081357710740', 1, 1);
                    printer.printCustom('Npwp : ', 1, 1);
                    printer.printCustom('${widget.Waktuku}', 1, 1);
                    // printer.printNewLine();
                    printer.printNewLine();
                    printer.print3Column(
                        'ID Transaksi :', '', 'M0${widget.id}', 1,
                        format: "%-3s %-1s %8s %n");
                    printer.printNewLine();
                    printer.printNewLine();
                    printer.printCustom('================', 2, 1);
                    printer.printNewLine();
                    // printer.printNewLine();
                    printer.print3Column(
                        '${widget.Jumlah}', 'Mobil', 'Rp. ${widget.Harga}', 1,
                        format: "%-3s %-16s %8s %n");
                    printer.printNewLine();
                    // printer.printNewLine();
                    // printer.print3Column('', 'PPN', 'Rp. 500', 1,
                    //     format: "%-11s %8s %11s %n");
                    printer.printCustom('================', 2, 1);
                    printer.printNewLine();
                    // printer.printNewLine();
                    printer.print3Column(
                        'Total', '', 'Rp. ${widget.intotal}', 1,
                        format: "%-3s %-14s %8s %n");

                    printer.print3Column(
                        '', 'Pajak Daerah', 'Rp. ${widget.total}', 1,
                        format: "%-3s %-16s %9s %n");
                    printer.print3Column('', 'Grand Total',
                        'Rp. ${widget.intotal + widget.total} ', 1,
                        format: "%-3s %-16s %9s %n");
                    printer.printNewLine();
                    // printer.print3Column(
                    //     '', 'Pembayaran', 'Rp. ${widget.pembayaran}', 0,
                    //     format: "%-3s %-16s %9s %n");
                    // printer.print3Column('', 'Kembalian', 'Rp. ${realPpn}', 0,
                    //     format: "%-3s %-16s %9s %n");
                    // printer.printNewLine();
                    printer.printNewLine();
                    printer.printCustom('================', 2, 1);
                    // // printer.printNewLine();
                    printer.printNewLine();
                    printer.printCustom('Terimakasih', 0, 1);
                    printer.printNewLine();
                    // printer.printNewLine();
                    printer.printCustom('================', 2, 1);
                    printer.printNewLine();
                    // printer.printNewLine();
                  }
                },
                child: Text('Print'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
