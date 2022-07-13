import 'package:eparkir_waluyo/pages/master/model_kasir/result_motor.dart';
import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';
// import 'package:intl/intl.dart';
import 'dart:math';

// import 'package:e_ticket/custom/datePicker.dart';

import 'package:eparkir_waluyo/pages/master/model_kasir/result.dart';
import 'package:eparkir_waluyo/pages/master/model_kasir/round_icon_button.dart';
import 'package:eparkir_waluyo/pages/master/model_kasir/reusable_card.dart';
import 'package:eparkir_waluyo/pages/master/model_kasir/calculate.dart';
import 'package:http/http.dart' as http;

import '../model_kasir/icon_button_min.dart';

class InputPage extends StatefulWidget {
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool _validate = false;
  int id = Random().nextInt(1000);

  String Harga;
  String Jumlah;

  String Waktuku = Waktu().yMMMMEEEEd();

  TextEditingController idPengunjungcontroller = new TextEditingController();
  TextEditingController Jumlahcontroller = new TextEditingController();
  TextEditingController Hargacontroller = new TextEditingController();
  TextEditingController totalcontroller = new TextEditingController();

  void addPost() {
    var url = http.post(Uri.parse("http://192.168.1.172/api/eticket"), body: {
      "tgl": "$tgl",
      "meja": Jumlahcontroller.text,
      "total":
          "${int.tryParse(Hargacontroller.text) * int.tryParse(Jumlahcontroller.text) * 20 / 100 + (int.tryParse(Hargacontroller.text) * int.tryParse(Jumlahcontroller.text))}",
      "id_transaksi": "M0${id}",
    });
  }

  String pilihTanggal, labelText;
  DateTime tgl = new DateTime.now();

  // final TextStyle valueStyle = TextStyle(fontSize: 16.0);
  // Future<Null> _selectedDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //       context: context,
  //       initialDate: tgl,
  //       firstDate: DateTime(2000),
  //       lastDate: DateTime(2099));

  //   if (picked != null && picked != tgl) {
  //     setState(() {
  //       tgl = picked;
  //       pilihTanggal = DateFormat.yMd().format(tgl);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var FontAwesomeIcons;

    return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(children: <Widget>[
          // dateDropDown(
          //   controller: tglcontroller,
          //   labelText: labelText,
          //   valueStyle: valueStyle,
          //   valueText: DateFormat.yMd().format(tgl),
          //   onPressed: () {
          //     _selectedDate(context);
          //   },
          //   onChanged: (text) {
          //     pilihTanggal = text;
          //   },
          // ),
          Text(
            Waktuku,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "P0${id}",
            style: TextStyle(fontSize: 14),
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: Row(children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                          childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Jumlah",
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                          child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        cursorColor: Colors.white,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                        textAlign: TextAlign.center,
                        controller: Jumlahcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          Jumlah = text;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Masukkan Harga";
                          } else {
                            return null;
                          }
                        },
                      )),
                    ],
                  ))),
                  Expanded(
                      child: ReusableCard(
                          childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Harga Ticket",
                        style: TextStyle(fontSize: 20),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: <Widget>[
                      //     Text(
                      //       "IDR",
                      //       style: TextStyle(
                      //           fontSize: 24, fontWeight: FontWeight.w400),
                      //     ),
                      //     SizedBox(
                      //       width: 5,
                      //     ),
                      //     Text(
                      //       harga.toString(),
                      //       style: TextStyle(
                      //           fontSize: 28, fontWeight: FontWeight.bold),
                      //     ),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Text(
                      //       "K",
                      //       style: TextStyle(
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.w400,
                      //           color: Colors.redAccent),
                      //     )
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: <Widget>[
                      //     ButtonMin(
                      //         icon: FontAwesomeIcons,
                      //         onPressed: () {
                      //           setState(() {
                      //             harga--;
                      //           });
                      //         }),
                      //     RoundIconButton(
                      //         icon: FontAwesomeIcons,
                      //         onPressed: () {
                      //           setState(() {
                      //             harga++;
                      //           });
                      //         })
                      //   ],
                      // )
                      Container(
                          child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        cursorColor: Colors.white,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                        textAlign: TextAlign.center,
                        controller: Hargacontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          Harga = text;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Masukkan Harga";
                          } else {
                            return null;
                          }
                        },
                      )),
                    ],
                  )))
                ]),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              )),
          GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 80,
              color: Colors.amber,
              width: double.infinity,
            ),
            onTap: () {
              // if (addPost == null) {
              //   print("No Input");
              // } else {
              //   addPost();
              // }
              CalculateInt calc = CalculateInt(Harga: Harga, Jumlah: Jumlah);
              RealTotal real = RealTotal(Harga: Harga, Jumlah: Jumlah);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultMotor(
                          total: calc.calculateTotal().toInt(),
                          intotal: real.TotalAsli(),
                          Harga: Harga,
                          Jumlah: Jumlah,
                          Waktuku: Waktuku,
                          id: id)));
            },
          )
        ]));
  }
}
